﻿unit uConn;

interface

uses   SqlExpr, inifiles, SysUtils, Forms,Dialogs,System.UITypes;

type
  TConn = class
    private
      Conn: TSQLConnection;
      SQLGeral : TSQLQuery;

    public
      constructor Create;
      destructor Destroy; override;

      function GetConexao : TSQLConnection;
      procedure Caminho;
      property ConexaoBanco : TSQLConnection read GetConexao;
      property SqqGeral : TSQLQuery read SQLGeral write SQLGeral;
    var conexao: TSQLConnection;
end;

implementation { Tconn }

uses uTrataException, uBancoDados;

procedure TConn.Caminho;
var ArquivoINI, Servidor, Caminho : string;
    Configuracoes : TIniFile;
begin
  // Pega o caminho do arquivo .INI
  ArquivoINI :=  ExtractFilePath(Application.ExeName) + '\config.ini';
  Configuracoes := TIniFile.Create(ArquivoINI);
   Try
   // Le o arquivo .INI
     Servidor   := Configuracoes.ReadString('Banco', 'SERVIDOR',Servidor);
     Caminho    := Configuracoes.ReadString('Banco', 'DATABASE',Caminho);
   Finally
     Configuracoes.Free;
     with DM do begin
     // Colocar o caminho no componete TSQLConnection
      Banco.Connected := False;
      Banco.Params.Values['DataBase'] := Servidor + ':' + Caminho;
      Banco.Connected := True;
     end;

   end;
end;

constructor TConn.Create;
var ArquivoINI, Servidor, Caminho : string;
    Configuracoes : TIniFile;
begin
  // Pega o caminho do arquivo .INI
  ArquivoINI :=  ExtractFilePath(Application.ExeName) + '\config.ini';

  if not FileExists(ExtractFilePath(Application.ExeName) + 'config.ini') then begin
    // Criar o arquivo INI se n�o existe no local do .EXE
    Configuracoes:= TIniFile.Create(ExtractFilePath(ParamStr(0))+'config.ini');
    // Inserir no arquivo INI o caminho do Banco
    Configuracoes.WriteString('Banco', 'SERVIDOR','LocalHost');
    Configuracoes.WriteString('Banco','DATABASE',ExtractFilePath(Application.ExeName)+'Dados\Dados.FDB');
    Configuracoes.Free;
    MessageDlg('Não foi possivel encontrar o arquivo de configurações,'+
    ' o sistema vai criar um pre-configurado para acessa a BASE DE DADOS no endereço: '+ExtractFilePath(Application.ExeName)+'Dados\Dados.fdb'+
    ' tente abrir novamente o sistema, se o problema persistir entre em contato com desenvolvedor',mtError,[mbOK],0);
    Application.Terminate;  // Finaliza aplicação
  end;

   // Carregando as informações do arquivo de configura��es
   Configuracoes := TIniFile.Create(ArquivoINI);

   Try
   // Lê o arquivo .INI
     Servidor   := Configuracoes.ReadString('Banco', 'SERVIDOR',Servidor);
     Caminho    := Configuracoes.ReadString('Banco', 'DATABASE',Caminho);

   Finally
     Configuracoes.Free;
   end;

   try
   // Paramentros do componete TSQLConnetion
     Conn := TSQLConnection.Create(Application);
     Conn.ConnectionName := 'SisCaixa';
     Conn.DriverName     := 'Firebird';
     Conn.LibraryName    := 'dbxfb.dll';
     Conn.VendorLib      := 'fbclient.dll';
     Conn.GetDriverFunc  := 'getSQLDriverINTERBASE';
     Conn.LoginPrompt    := False;

     Conn.Connected  := False;
     Conn.Params.Values['DataBase']   := Servidor + ':' + Caminho;
     Conn.Connected  := True;
   except
     // Caso não tenho o Dados.FDB retorna essa mensagem
     ShowMessage('Erro ao Conectar o Banco de dados. Verifique as preferencias do sistema!');
     Application.Terminate;
   end;
   SQLGeral := TSQLQuery.Create(Application);
   SQLGeral.SQLConnection := ConexaoBanco;
   conexao := DM.Banco;
end;

destructor TConn.Destroy;
begin
  Conn.Free;
  inherited;
end;

function TConn.GetConexao: TSQLConnection;
begin
  Result := Conn;
end;

end.




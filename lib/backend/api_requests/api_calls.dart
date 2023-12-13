import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start GM Api Group Code

class GMApiGroup {
  static String baseUrl = 'https://64763dad2550d3fd65d6e9cbb6fecdf3.serveo.net';
  static Map<String, String> headers = {};
  static GetLoginCall getLoginCall = GetLoginCall();
  static GetRequisicaoCall getRequisicaoCall = GetRequisicaoCall();
  static CreateUsuarioCall createUsuarioCall = CreateUsuarioCall();
  static GetRequisicaoConcluidaCall getRequisicaoConcluidaCall =
      GetRequisicaoConcluidaCall();
  static EditUsuarioCall editUsuarioCall = EditUsuarioCall();
  static DeleteUsuarioCall deleteUsuarioCall = DeleteUsuarioCall();
  static EditSenhaUsuarioCall editSenhaUsuarioCall = EditSenhaUsuarioCall();
  static GetStatusCall getStatusCall = GetStatusCall();
  static GetSprintNaoConcluidaCall getSprintNaoConcluidaCall =
      GetSprintNaoConcluidaCall();
  static CreateRequisicaoCall createRequisicaoCall = CreateRequisicaoCall();
  static DeleteRequisicaoCall deleteRequisicaoCall = DeleteRequisicaoCall();
  static EditRequisicaoCall editRequisicaoCall = EditRequisicaoCall();
  static ConcluirRequisicaoCall concluirRequisicaoCall =
      ConcluirRequisicaoCall();
  static GetSprintCall getSprintCall = GetSprintCall();
  static CreateSprintCall createSprintCall = CreateSprintCall();
  static GetPontoCall getPontoCall = GetPontoCall();
  static BaterPontoCall baterPontoCall = BaterPontoCall();
  static DeletePontoCall deletePontoCall = DeletePontoCall();
  static EditPontoCall editPontoCall = EditPontoCall();
  static GetRequisicaoSprintCall getRequisicaoSprintCall =
      GetRequisicaoSprintCall();
  static DeleteSprintCall deleteSprintCall = DeleteSprintCall();
}

class GetLoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? senha = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Login',
      apiUrl: '${GMApiGroup.baseUrl}/api/Login/${email}/${senha}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic idUsuario(dynamic response) => getJsonField(
        response,
        r'''$.id_usuario''',
      );
  dynamic nomeUsuario(dynamic response) => getJsonField(
        response,
        r'''$.nome''',
      );
  dynamic cpfUsuario(dynamic response) => getJsonField(
        response,
        r'''$.cpf''',
      );
  dynamic emailUsuario(dynamic response) => getJsonField(
        response,
        r'''$.email''',
      );
  dynamic senhaUsuario(dynamic response) => getJsonField(
        response,
        r'''$.senha''',
      );
  dynamic telefoneUsuario(dynamic response) => getJsonField(
        response,
        r'''$.telefone''',
      );
  dynamic senhaAntigaUsuario(dynamic response) => getJsonField(
        response,
        r'''$.senha_antiga''',
      );
}

class GetRequisicaoCall {
  Future<ApiCallResponse> call({
    String? idUsuario = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Requisicao',
      apiUrl: '${GMApiGroup.baseUrl}/api/Requisicao/${idUsuario}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic idRequisicao(dynamic response) => getJsonField(
        response,
        r'''$[:].id_requisicao''',
        true,
      );
  dynamic nomeRequisicao(dynamic response) => getJsonField(
        response,
        r'''$[:].nome''',
        true,
      );
  dynamic descricaoRequisicao(dynamic response) => getJsonField(
        response,
        r'''$[:].descricao''',
        true,
      );
  dynamic dataCadastroRequisicao(dynamic response) => getJsonField(
        response,
        r'''$[:].data_cadastro''',
        true,
      );
  dynamic dataConclusaoRequisicao(dynamic response) => getJsonField(
        response,
        r'''$[:].data_conclusao''',
        true,
      );
  dynamic statusRequisicao(dynamic response) => getJsonField(
        response,
        r'''$[:].status.nome''',
        true,
      );
  dynamic statusHoras(dynamic response) => getJsonField(
        response,
        r'''$[:].status.conta_horas''',
        true,
      );
  dynamic responsavelRequisicao(dynamic response) => getJsonField(
        response,
        r'''$[:].usuarioResponsavel.nome''',
        true,
      );
  dynamic solicitanteRequisicao(dynamic response) => getJsonField(
        response,
        r'''$[:].usuario.nome''',
        true,
      );
  dynamic sprintRequisicao(dynamic response) => getJsonField(
        response,
        r'''$[:].sprint.nome''',
        true,
      );
  dynamic usuarioCriacaoEmail(dynamic response) => getJsonField(
        response,
        r'''$[:].usuario.email''',
        true,
      );
  dynamic idSprintRequisicao(dynamic response) => getJsonField(
        response,
        r'''$[:].id_sprint''',
        true,
      );
  dynamic usuarioResponsavelEmail(dynamic response) => getJsonField(
        response,
        r'''$[:].usuarioResponsavel.email''',
        true,
      );
  dynamic idStatusRequisicao(dynamic response) => getJsonField(
        response,
        r'''$[:].status.id_status''',
        true,
      );
}

class CreateUsuarioCall {
  Future<ApiCallResponse> call({
    String? nome = '',
    String? cpf = '',
    String? telefone = '',
    String? email = '',
    String? senha = '',
  }) async {
    final ffApiRequestBody = '''
{
  "nome": "${nome}",
  "cpf": "${cpf}",
  "telefone": "${telefone}",
  "email": "${email}",
  "senha": "${senha}",
  "senha_antiga": "${senha}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Usuario',
      apiUrl: '${GMApiGroup.baseUrl}/api/Usuario',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic nomeUsuario(dynamic response) => getJsonField(
        response,
        r'''$.nome''',
      );
  dynamic cpfUsuario(dynamic response) => getJsonField(
        response,
        r'''$.cpf''',
      );
  dynamic telefoneUsuario(dynamic response) => getJsonField(
        response,
        r'''$.telefone''',
      );
  dynamic emailUsuario(dynamic response) => getJsonField(
        response,
        r'''$.email''',
      );
  dynamic senhaUsuario(dynamic response) => getJsonField(
        response,
        r'''$.senha''',
      );
}

class GetRequisicaoConcluidaCall {
  Future<ApiCallResponse> call({
    String? idUsuario = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Requisicao Concluida',
      apiUrl: '${GMApiGroup.baseUrl}/api/Requisicao/conc/${idUsuario}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic idRequisicao(dynamic response) => getJsonField(
        response,
        r'''$[:].id_requisicao''',
        true,
      );
  dynamic nome(dynamic response) => getJsonField(
        response,
        r'''$[:].nome''',
        true,
      );
  dynamic descricao(dynamic response) => getJsonField(
        response,
        r'''$[:].descricao''',
        true,
      );
  dynamic datacadastro(dynamic response) => getJsonField(
        response,
        r'''$[:].data_cadastro''',
        true,
      );
  dynamic dataconclusao(dynamic response) => getJsonField(
        response,
        r'''$[:].data_conclusao''',
        true,
      );
  dynamic idstatus(dynamic response) => getJsonField(
        response,
        r'''$[:].id_status''',
        true,
      );
  dynamic statusnome(dynamic response) => getJsonField(
        response,
        r'''$[:].status.nome''',
        true,
      );
  dynamic idatualresponsavel(dynamic response) => getJsonField(
        response,
        r'''$[:].id_atual_responsavel''',
        true,
      );
  dynamic usuarioResponsavelnome(dynamic response) => getJsonField(
        response,
        r'''$[:].usuarioResponsavel.nome''',
        true,
      );
  dynamic idusuariocriacao(dynamic response) => getJsonField(
        response,
        r'''$[:].id_usuario_criacao''',
        true,
      );
  dynamic usuarionome(dynamic response) => getJsonField(
        response,
        r'''$[:].usuario.nome''',
        true,
      );
  dynamic usuarioResponsavelemail(dynamic response) => getJsonField(
        response,
        r'''$[:].usuarioResponsavel.email''',
        true,
      );
  dynamic idsprint(dynamic response) => getJsonField(
        response,
        r'''$[:].id_sprint''',
        true,
      );
  dynamic sprint(dynamic response) => getJsonField(
        response,
        r'''$[:].sprint.nome''',
        true,
      );
}

class EditUsuarioCall {
  Future<ApiCallResponse> call({
    String? idUsuario = '',
    String? nome = '',
    String? cpf = '',
    String? telefone = '',
    String? email = '',
    String? senha = '',
  }) async {
    final ffApiRequestBody = '''
{
  "id_usuario": "${idUsuario}",
  "nome": "${nome}",
  "cpf": "${cpf}",
  "telefone": "${telefone}",
  "email": "${email}",
  "senha": "${senha}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit Usuario',
      apiUrl: '${GMApiGroup.baseUrl}/api/Usuario/${idUsuario}',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic nomeUsuario(dynamic response) => getJsonField(
        response,
        r'''$.nome''',
      );
  dynamic cpfUsuario(dynamic response) => getJsonField(
        response,
        r'''$.cpf''',
      );
  dynamic telefoneUsuario(dynamic response) => getJsonField(
        response,
        r'''$.telefone''',
      );
  dynamic emailUsuario(dynamic response) => getJsonField(
        response,
        r'''$.email''',
      );
  dynamic senhaUsuario(dynamic response) => getJsonField(
        response,
        r'''$.senha''',
      );
  dynamic idUsuario(dynamic response) => getJsonField(
        response,
        r'''$.id_usuario''',
      );
}

class DeleteUsuarioCall {
  Future<ApiCallResponse> call({
    String? idUsuario = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete Usuario',
      apiUrl: '${GMApiGroup.baseUrl}/api/Usuario/${idUsuario}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class EditSenhaUsuarioCall {
  Future<ApiCallResponse> call({
    String? idUsuario = '',
    String? nome = '',
    String? cpf = '',
    String? telefone = '',
    String? email = '',
    String? senha = '',
    String? senhaAntiga = '',
  }) async {
    final ffApiRequestBody = '''
{
  "id_usuario": "${idUsuario}",
  "nome": "${nome}",
  "cpf": "${cpf}",
  "telefone": "${telefone}",
  "email": "${email}",
  "senha": "${senha}",
  "senha_antiga": "${senhaAntiga}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit Senha Usuario',
      apiUrl: '${GMApiGroup.baseUrl}/api/Usuario/edit/password/${idUsuario}',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic idUsuario(dynamic response) => getJsonField(
        response,
        r'''$.id_usuario''',
      );
  dynamic nomeUsuario(dynamic response) => getJsonField(
        response,
        r'''$.nome''',
      );
  dynamic cpfUsuario(dynamic response) => getJsonField(
        response,
        r'''$.cpf''',
      );
  dynamic telefoneUsuario(dynamic response) => getJsonField(
        response,
        r'''$.telefone''',
      );
  dynamic emailUsuario(dynamic response) => getJsonField(
        response,
        r'''$.email''',
      );
  dynamic senhaUsuario(dynamic response) => getJsonField(
        response,
        r'''$.senha''',
      );
  dynamic senhaAntigaUsuario(dynamic response) => getJsonField(
        response,
        r'''$.senha_antiga''',
      );
}

class GetStatusCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Status',
      apiUrl: '${GMApiGroup.baseUrl}/api/Status/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic idStatus(dynamic response) => getJsonField(
        response,
        r'''$[:].id_status''',
        true,
      );
  dynamic nomeStatus(dynamic response) => getJsonField(
        response,
        r'''$[:].nome''',
        true,
      );
  dynamic contaHoras(dynamic response) => getJsonField(
        response,
        r'''$[:].conta_horas''',
        true,
      );
}

class GetSprintNaoConcluidaCall {
  Future<ApiCallResponse> call({
    String? idUsuario = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Sprint Nao Concluida',
      apiUrl: '${GMApiGroup.baseUrl}/api/Sprint/conc/${idUsuario}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic idSprint(dynamic response) => getJsonField(
        response,
        r'''$[:].id_sprint''',
        true,
      );
  dynamic nomeSprint(dynamic response) => getJsonField(
        response,
        r'''$[:].nome''',
        true,
      );
  dynamic descricaoSprint(dynamic response) => getJsonField(
        response,
        r'''$[:].descricao''',
        true,
      );
  dynamic dataCadastroSprint(dynamic response) => getJsonField(
        response,
        r'''$[:].data_cadastro''',
        true,
      );
  dynamic dataConclusaoSprint(dynamic response) => getJsonField(
        response,
        r'''$[:].data_conclusao''',
        true,
      );
  dynamic idStatusSprint(dynamic response) => getJsonField(
        response,
        r'''$[:].id_status''',
        true,
      );
  dynamic statusNomeSprint(dynamic response) => getJsonField(
        response,
        r'''$[:].status.nome''',
        true,
      );
}

class CreateRequisicaoCall {
  Future<ApiCallResponse> call({
    String? nome = '',
    String? descricao = '',
    String? dataCadastro = '',
    String? dataConclusao = '',
    String? idStatus = '',
    String? idAtualResponsavel = '',
    String? idUsuarioCriacao = '',
    String? idSprint = '',
    String? email = '',
    String? statusNome = '',
  }) async {
    final ffApiRequestBody = '''
{
  "nome": "${nome}",
  "descricao": "${descricao}",
  "data_cadastro": "${dataCadastro}",
  "data_conclusao": "${dataConclusao}",
  "id_status": 1,
  "id_atual_responsavel": "${idAtualResponsavel}",
  "id_usuario_criacao": "${idUsuarioCriacao}",
  "id_sprint": "${idSprint}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Requisicao',
      apiUrl: '${GMApiGroup.baseUrl}/api/Requisicao/${email}/${statusNome}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic idRequisicao(dynamic response) => getJsonField(
        response,
        r'''$.id_requisicao''',
      );
  dynamic nomeRequisicao(dynamic response) => getJsonField(
        response,
        r'''$.nome''',
      );
  dynamic descricaoRequisicao(dynamic response) => getJsonField(
        response,
        r'''$.descricao''',
      );
  dynamic dataCadastroRequisicao(dynamic response) => getJsonField(
        response,
        r'''$.data_cadastro''',
      );
  dynamic dataConclusaoRequisicao(dynamic response) => getJsonField(
        response,
        r'''$.data_conclusao''',
      );
  dynamic idStatusRequisicao(dynamic response) => getJsonField(
        response,
        r'''$.id_status''',
      );
  dynamic idResponsavelRequisicao(dynamic response) => getJsonField(
        response,
        r'''$.id_atual_responsavel''',
      );
  dynamic idUsuarioCriacaoRequisicao(dynamic response) => getJsonField(
        response,
        r'''$.id_usuario_criacao''',
      );
  dynamic idSprintRequisicao(dynamic response) => getJsonField(
        response,
        r'''$.id_sprint''',
      );
}

class DeleteRequisicaoCall {
  Future<ApiCallResponse> call({
    String? idRequisicao = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete Requisicao',
      apiUrl: '${GMApiGroup.baseUrl}/api/Requisicao/req/${idRequisicao}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class EditRequisicaoCall {
  Future<ApiCallResponse> call({
    String? idRequisicao = '',
    String? nome = '',
    String? descricao = '',
    String? dataConclusao = '',
    String? idStatus = '',
    String? idAtualResponsavel = '',
    String? idSprint = '',
    String? idUsuarioCriacao = '',
    String? dataCadastro = '',
    String? statusNome = '',
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
  "id_requisicao": "${idRequisicao}",
  "nome": "${nome}",
  "descricao": "${descricao}",
  "data_cadastro": "${dataCadastro}",
  "data_conclusao": "${dataConclusao}",
  "id_status": 1,
  "id_atual_responsavel": "${idAtualResponsavel}",
  "id_usuario_criacao": "${idUsuarioCriacao}",
  "id_sprint": "${idSprint}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit Requisicao',
      apiUrl:
          '${GMApiGroup.baseUrl}/api/Requisicao/req/${idRequisicao}/${email}/${statusNome}',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic idrequisicao(dynamic response) => getJsonField(
        response,
        r'''$.id_requisicao''',
      );
  dynamic nome(dynamic response) => getJsonField(
        response,
        r'''$.nome''',
      );
  dynamic descricao(dynamic response) => getJsonField(
        response,
        r'''$.descricao''',
      );
  dynamic datacadastro(dynamic response) => getJsonField(
        response,
        r'''$.data_cadastro''',
      );
  dynamic dataconclusao(dynamic response) => getJsonField(
        response,
        r'''$.data_conclusao''',
      );
  dynamic idstatus(dynamic response) => getJsonField(
        response,
        r'''$.id_status''',
      );
  dynamic statusnome(dynamic response) => getJsonField(
        response,
        r'''$.status.nome''',
      );
  dynamic idatualresponsavel(dynamic response) => getJsonField(
        response,
        r'''$.id_atual_responsavel''',
      );
  dynamic usuarioResponsavelemail(dynamic response) => getJsonField(
        response,
        r'''$.usuarioResponsavel.email''',
      );
  dynamic idusuariocriacao(dynamic response) => getJsonField(
        response,
        r'''$.id_usuario_criacao''',
      );
  dynamic idsprint(dynamic response) => getJsonField(
        response,
        r'''$.id_sprint''',
      );
}

class ConcluirRequisicaoCall {
  Future<ApiCallResponse> call({
    String? idRequisicao = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Concluir Requisicao',
      apiUrl: '${GMApiGroup.baseUrl}/api/Requisicao/concluir/${idRequisicao}',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetSprintCall {
  Future<ApiCallResponse> call({
    String? idUsuario = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Sprint',
      apiUrl: '${GMApiGroup.baseUrl}/api/Sprint/usuSprint/${idUsuario}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic idsprint(dynamic response) => getJsonField(
        response,
        r'''$[:].id_sprint''',
        true,
      );
  dynamic nome(dynamic response) => getJsonField(
        response,
        r'''$[:].nome''',
        true,
      );
  dynamic descricao(dynamic response) => getJsonField(
        response,
        r'''$[:].descricao''',
        true,
      );
  dynamic datacadastro(dynamic response) => getJsonField(
        response,
        r'''$[:].data_cadastro''',
        true,
      );
  dynamic dataconclusao(dynamic response) => getJsonField(
        response,
        r'''$[:].data_conclusao''',
        true,
      );
  dynamic idstatus(dynamic response) => getJsonField(
        response,
        r'''$[:].id_status''',
        true,
      );
  dynamic statusnome(dynamic response) => getJsonField(
        response,
        r'''$[:].status.nome''',
        true,
      );
  dynamic usuarionome(dynamic response) => getJsonField(
        response,
        r'''$[:].usuario.nome''',
        true,
      );
  dynamic usuarioidusuario(dynamic response) => getJsonField(
        response,
        r'''$[:].usuario.id_usuario''',
        true,
      );
  dynamic usuarioemail(dynamic response) => getJsonField(
        response,
        r'''$[:].usuario.email''',
        true,
      );
}

class CreateSprintCall {
  Future<ApiCallResponse> call({
    String? statusNome = '',
    String? nome = '',
    String? descricao = '',
    String? dataCadastro = '',
    String? dataConclusao = '',
    String? idStatus = '',
    String? idUsuarioCriacao = '',
  }) async {
    final ffApiRequestBody = '''
{
  "nome": "${nome}",
  "descricao": "${descricao}",
  "data_cadastro": "${dataCadastro}",
  "data_conclusao": "${dataConclusao}",
  "id_status": 0,
  "id_usuario_criacao": "${idUsuarioCriacao}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Sprint',
      apiUrl: '${GMApiGroup.baseUrl}/api/Sprint/${statusNome}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetPontoCall {
  Future<ApiCallResponse> call({
    String? dataPonto = '',
    int? idUsuario,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Ponto',
      apiUrl: '${GMApiGroup.baseUrl}/api/Ponto/${idUsuario}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'data_ponto': dataPonto,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic idPonto(dynamic response) => getJsonField(
        response,
        r'''$[:].id_ponto''',
        true,
      );
  dynamic dataPonto(dynamic response) => getJsonField(
        response,
        r'''$[:].data_ponto''',
        true,
      );
  dynamic horaPonto(dynamic response) => getJsonField(
        response,
        r'''$[:].hora_ponto''',
        true,
      );
  dynamic idUsuarioPonto(dynamic response) => getJsonField(
        response,
        r'''$[:].id_usuario_criacao''',
        true,
      );
  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$[:].status''',
        true,
      );
}

class BaterPontoCall {
  Future<ApiCallResponse> call({
    int? idUsuario,
    String? dataPonto = '',
    String? horaPonto = '',
  }) async {
    final ffApiRequestBody = '''
{
  "data_ponto": "${dataPonto}",
  "hora_ponto": "${horaPonto}",
  "id_usuario_criacao": "${idUsuario}",
  "status": "Entrada"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Bater Ponto',
      apiUrl: '${GMApiGroup.baseUrl}/api/Ponto/${idUsuario}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic dataPonto(dynamic response) => getJsonField(
        response,
        r'''$.data_ponto''',
      );
  dynamic horaPonto(dynamic response) => getJsonField(
        response,
        r'''$.hora_ponto''',
      );
  dynamic idUsuarioPonto(dynamic response) => getJsonField(
        response,
        r'''$.id_usuario_criacao''',
      );
}

class DeletePontoCall {
  Future<ApiCallResponse> call({
    int? idPonto,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete Ponto',
      apiUrl: '${GMApiGroup.baseUrl}/api/Ponto/${idPonto}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {
        'id_ponto': idPonto,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class EditPontoCall {
  Future<ApiCallResponse> call({
    int? idPonto,
    String? dataPonto = '',
    String? horaPonto = '',
  }) async {
    final ffApiRequestBody = '''
{
  "id_ponto": ${idPonto},
  "data_ponto": "${dataPonto}",
  "hora_ponto": "${horaPonto}",
  "status": "Saida",
  "id_usuario_criacao": 1
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Edit Ponto',
      apiUrl: '${GMApiGroup.baseUrl}/api/Ponto/${idPonto}',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic dataPonto(dynamic response) => getJsonField(
        response,
        r'''$.data_ponto''',
      );
  dynamic idPonto(dynamic response) => getJsonField(
        response,
        r'''$.id_ponto''',
      );
  dynamic horaPonto(dynamic response) => getJsonField(
        response,
        r'''$.hora_ponto''',
      );
  dynamic statusPonto(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  dynamic idUsuarioPonto(dynamic response) => getJsonField(
        response,
        r'''$.id_usuario_criacao''',
      );
}

class GetRequisicaoSprintCall {
  Future<ApiCallResponse> call({
    int? idSprint,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Requisicao Sprint',
      apiUrl: '${GMApiGroup.baseUrl}/api/Requisicao/sprint/${idSprint}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'id_sprint': idSprint,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic idRequisicao(dynamic response) => getJsonField(
        response,
        r'''$[:].id_requisicao''',
        true,
      );
  dynamic nomeRequisicao(dynamic response) => getJsonField(
        response,
        r'''$[:].nome''',
        true,
      );
  dynamic descricaoRequisicao(dynamic response) => getJsonField(
        response,
        r'''$[:].descricao''',
        true,
      );
  dynamic dataCadastroRequisicao(dynamic response) => getJsonField(
        response,
        r'''$[:].data_cadastro''',
        true,
      );
  dynamic dataConclusaoRequisicao(dynamic response) => getJsonField(
        response,
        r'''$[:].data_conclusao''',
        true,
      );
  dynamic idStatusRequisicao(dynamic response) => getJsonField(
        response,
        r'''$[:].id_status''',
        true,
      );
  dynamic nomeStatusRequisicao(dynamic response) => getJsonField(
        response,
        r'''$[:].status.nome''',
        true,
      );
  dynamic idResponsavelRequisicao(dynamic response) => getJsonField(
        response,
        r'''$[:].id_atual_responsavel''',
        true,
      );
  dynamic nomeResponsavelRequisicao(dynamic response) => getJsonField(
        response,
        r'''$[:].usuarioResponsavel.nome''',
        true,
      );
  dynamic idUsuarioCriacaoRequisicao(dynamic response) => getJsonField(
        response,
        r'''$[:].id_usuario_criacao''',
        true,
      );
  dynamic nomeUsuarioCriacaoRequisicao(dynamic response) => getJsonField(
        response,
        r'''$[:].usuario.nome''',
        true,
      );
  dynamic sprintDataCadastro(dynamic response) => getJsonField(
        response,
        r'''$[:].sprint.data_cadastro''',
        true,
      );
  dynamic sprintDataConclusao(dynamic response) => getJsonField(
        response,
        r'''$[:].sprint.data_conclusao''',
        true,
      );
  dynamic nomeSprint(dynamic response) => getJsonField(
        response,
        r'''$[:].sprint.nome''',
        true,
      );
  dynamic descricaoSprint(dynamic response) => getJsonField(
        response,
        r'''$[:].sprint.descricao''',
        true,
      );
  dynamic idSprint(dynamic response) => getJsonField(
        response,
        r'''$[:].sprint.id_sprint''',
        true,
      );
}

class DeleteSprintCall {
  Future<ApiCallResponse> call({
    int? idSprint,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete Sprint',
      apiUrl: '${GMApiGroup.baseUrl}/api/Sprint/${idSprint}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {
        'id_sprint': idSprint,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End GM Api Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}

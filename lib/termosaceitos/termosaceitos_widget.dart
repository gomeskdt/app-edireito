import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../cadastrado/cadastrado_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../home/home_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signature/signature.dart';

class TermosaceitosWidget extends StatefulWidget {
  const TermosaceitosWidget({Key key}) : super(key: key);

  @override
  _TermosaceitosWidgetState createState() => _TermosaceitosWidgetState();
}

class _TermosaceitosWidgetState extends State<TermosaceitosWidget> {
  String uploadedSignatureUrl = '';
  bool termosValue;
  SignatureController signatureController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    signatureController = SignatureController(
      penStrokeWidth: 2,
      penColor: Colors.black,
      exportBackgroundColor: Color(0xFF003145),
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<UsersRecord>>(
      stream: queryUsersRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: SpinKitPulse(
                color: Color(0xFF003145),
                size: 50,
              ),
            ),
          );
        }
        List<UsersRecord> termosaceitosUsersRecordList = snapshot.data;
        // Return an empty Container when the document does not exist.
        if (snapshot.data.isEmpty) {
          return Container();
        }
        final termosaceitosUsersRecord = termosaceitosUsersRecordList.isNotEmpty
            ? termosaceitosUsersRecordList.first
            : null;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: Color(0xFF003145),
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeWidget(),
                  ),
                );
              },
            ),
            title: Text(
              'contrato ',
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 0,
          ),
          backgroundColor: Color(0xFFF1F4F8),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 20),
                      child: Container(
                        width: double.infinity,
                        constraints: BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.height * 0.8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Color(0x44111417),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 10, 10, 5),
                                  child: Text(
                                    valueOrDefault<String>(
                                      termosaceitosUsersRecord.termodeuso,
                                      'TERMOS E CONDIÇÕES GERAIS PARA USO DO APLICATIVO  01. DO OBJETO A plataforma visa licenciar o uso de seu software, website, aplicativos e demais ativos de propriedade intelectual, fornecendo ferramentas para auxiliar e facilitar o dia a dia dos seus usuários.  A plataforma caracteriza-se pela prestação do seguinte serviço: consultoria de demandas cíveis, trabalhistas, empresariais e digitais.   A plataforma realiza a venda à distância por meio eletrônico dos seguintes produtos ou serviços: consultoria de demandas extrajudiciais ou judiciais.  02. DO ACEITE DOS TERMOS O presente Termo estabelece obrigações contratadas de livre e espontânea vontade, por tempo indeterminado, entre a plataforma e as pessoas físicas ou jurídicas, usuárias do site OU aplicativo.  Ao utilizar a plataforma o usuário aceita integralmente as presentes normas e compromete-se a observá-las, sob o risco de aplicação das penalidades cabíveis.  A aceitação do presente instrumento é imprescindível para o acesso e para a utilização de quaisquer serviços fornecidos pela empresa. Caso não concorde com as disposições deste instrumento, o usuário não deve utilizá-los.  03. DO ACESSO AOS USUÁRIOS Serão utilizadas todas as soluções técnicas à disposição do responsável pela plataforma para permitir o acesso ao serviço 24 (vinte e quatro) horas por dia, 7 (sete) dias por semana. No entanto, a navegação na plataforma ou em alguma de suas páginas poderá ser interrompida, limitada ou suspensa para atualizações, modificações ou qualquer ação necessária ao seu bom funcionamento.  A e-DIGITAL não se responsabiliza por nenhuma perda de oportunidade ou prejuízos que esta indisponibilidade temporária possa gerar aos usuários.  Em caso de manutenção que exigirem um tempo maior, a e-DIGITAL irá informar previamente aos clientes da necessidade e do tempo previsto em que o site ou plataforma ficará offline.  04. DO CADASTRO O acesso às funcionalidades da plataforma exigirá a realização de um cadastro prévio e, a depender dos serviços ou produtos escolhidos, o pagamento de determinado valor.  Ao se cadastrar o usuário deverá informar dados completos, recentes e válidos, sendo de sua exclusiva responsabilidade manter referidos dados atualizados, bem como o usuário se compromete com a veracidade dos dados fornecidos.  O usuário se compromete a não informar seus dados cadastrais e/ou de acesso à plataforma a terceiros, responsabilizando-se integralmente pelo uso que deles seja feito.  Menores de 18 anos e aqueles que não possuírem plena capacidade civil deverão obter previamente o consentimento expresso de seus responsáveis legais para utilização da plataforma e dos serviços ou produtos, sendo de responsabilidade exclusiva dos mesmos o eventual acesso por menores de idade e por aqueles que não possuem plena capacidade civil sem a prévia autorização.  Mediante a realização do cadastro o usuário declara e garante expressamente ser plenamente capaz, podendo exercer e usufruir livremente dos serviços e produtos.  O usuário deverá fornecer um endereço de e-mail válido, através do qual o site realizará todas as comunicações necessárias.  Após a confirmação do cadastro, o usuário possuirá um login e uma senha pessoal, a qual assegura ao usuário o acesso individual à mesma. Desta forma, compete ao usuário exclusivamente a manutenção de referida senha de maneira confidencial e segura, evitando o acesso indevido às informações pessoais.  Toda e qualquer atividade realizada com o uso da senha será de responsabilidade do usuário, que deverá informar prontamente a plataforma em caso de uso indevido da respectiva senha.  Não será permitido ceder, vender, alugar ou transferir, de qualquer forma, a conta, que é pessoal e intransferível.  Caberá ao usuário assegurar que o seu equipamento seja compatível com as características técnicas que viabilize a utilização da plataforma e dos serviços ou produtos.  Os dados coletados terão a única e exclusiva finalidade de atender a demanda de consultoria enviada.   O usuário poderá, a qualquer tempo, requerer o cancelamento de seu cadastro junto ao e-mail contato@ e-DIGITAL OU aplicativo e-DIGITAL. O seu descadastramento será realizado o mais rápido possível, desde que não sejam verificados débitos em aberto ou não sejam exigidos por lei que sejam mantidos em nosso cadastro.  O usuário, ao aceitar os Termos e Política de Privacidade, autoriza expressamente a plataforma a coletar, usar, armazenar, tratar, ceder ou utilizar as informações derivadas do uso dos serviços, do site e quaisquer plataformas, incluindo todas as informações preenchidas pelo usuário no momento em que realizar ou atualizar seu cadastro, além de outras expressamente descritas na Política de Privacidade que deverá ser autorizada pelo usuário.  05. DOS SERVIÇOS OU PRODUTOS A plataforma poderá disponibilizar para o usuário um conjunto específico de funcionalidades e ferramentas para otimizar o uso dos serviços e produtos.  Na plataforma os serviços ou produtos oferecidos estão descritos e apresentados com o maior grau de exatidão, contendo informações sobre suas características, qualidades, quantidades, composição, preço, garantia, prazos de validade e origem, entre outros dados, bem como sobre os riscos que apresentam à saúde e segurança do usuário.  A previsão de entrega de serviços adquiridos na plataforma será informada no momento da finalização da compra.   06. DOS PREÇOS A plataforma se reserva no direito de reajustar unilateralmente, a qualquer tempo, os valores dos serviços ou produtos sem consulta ou anuência prévia do usuário.  Os valores aplicados são aqueles que estão em vigor no momento da análise do pedido.  Os preços são indicados em reais.  Na contratação de determinado serviço, a plataforma poderá solicitar as informações financeiras do usuário, como CPF, endereço de cobrança e dados de cartões. Ao inserir referidos dados o usuário concorda que sejam cobrados, de acordo com a forma de pagamento que venha a ser escolhida, os preços então vigentes e informados quando da contratação. Referidos dados financeiros poderão ser armazenadas para facilitar acessos e contratações futuras, com a finalidade única e exclusiva das demandas enviadas pelo usuário.   A contratação dos serviços será renovada automaticamente pela plataforma, independentemente de comunicação ao usuário, mediante cobrança periódica da mesma forma de pagamento indicada pelo usuário quando da contratação do serviço, caso essa seja a modalidade contratada.  07. DO CANCELAMENTO O usuário poderá solicitar o cancelamento da contratação dos serviços de acordo com os termos que forem definidos no momento de sua contratação, estando ciente que não haverá devolução de valores pagos.  A plataforma poderá cancelar a contratação desde que usuário não esteja em dia com seus pagamentos, não cumpra com as suas obrigações, não envie documentos para dar continuidade  a demanda. Casos esses em que os valores já pagos não serão devolvidos.   RESPONSABILIDADES É de responsabilidade do usuário:  a) pagar as demandas em dia; b) a correta utilização da plataforma, dos serviços ou produtos oferecidos, prezando pela boa convivência, pelo respeito e cordialidade entre os usuários;  c) pelo cumprimento e respeito ao conjunto de regras disposto nesse Termo de Condições Geral de Uso, na respectiva Política de Privacidade e na legislação nacional e internacional;  d) pela proteção aos dados de acesso à sua conta/perfil (login e senha).  É de responsabilidade da plataforma e-DIGITAL:  Indicar como será conduzida a demanda;   A plataforma não se responsabiliza por links externos contidos em seu sistema que possam redirecionar o usuário ao ambiente externo a sua rede.  09. DOS DIREITOS AUTORAIS O presente Termo de Uso concede aos usuários uma licença não exclusiva, não transferível e não sublicenciável, para acessar e fazer uso da plataforma e dos serviços e produtos por ela disponibilizados desde que devidamente contratado.  A estrutura do site ou aplicativo, as marcas, logotipos, nomes comerciais, layouts, gráficos e design de interface, imagens, ilustrações, fotografias, apresentações, vídeos, conteúdos escritos e de som e áudio, programas de computador, banco de dados, arquivos de transmissão e quaisquer outras informações e direitos de propriedade intelectual da razão social vinculada à plataforma eDigitam, observados os termos da Lei da Propriedade Industrial (Lei nº 9.279/96), Lei de Direitos Autorais (Lei nº 9.610/98) e Lei do Software (Lei nº 9.609/98), estão devidamente reservados. Este Termos de Uso não cede ou transfere ao usuário qualquer direito, de modo que o acesso não gera qualquer direito de propriedade intelectual ao usuário, exceto pela licença limitada ora concedida.  O uso da plataforma pelo usuário é pessoal, individual e intransferível, sendo vedado qualquer uso não autorizado, comercial ou não-comercial. Tais usos consistirão em violação dos direitos de propriedade intelectual da razão social vinculada ao e Digital, puníveis nos termos da legislação aplicável.  10. DAS SANÇÕES Sem prejuízo das demais medidas legais cabíveis, a razão social vinculadas ao eDigital poderá, a qualquer momento, advertir, suspender ou cancelar a conta do usuário:  a) que violar qualquer dispositivo do presente Termo;  b) que descumprir os seus deveres de usuário;  c) que tenha qualquer comportamento fraudulento, doloso ou que ofenda a terceiros.  11. DA RESCISÃO A não observância das obrigações pactuadas neste Termo de Uso ou da legislação aplicável poderá, sem prévio aviso, ensejar a imediata rescisão unilateral por parte da razão social e-DIGITAL e o bloqueio de todos os serviços prestados ao usuário sem devolução de valores pagos.   12. DAS ALTERAÇÕES Os itens descritos no presente instrumento poderão sofrer alterações, unilateralmente e a qualquer tempo, por parte de e-DIGITAL, para adequar ou modificar os serviços, bem como para atender novas exigências legais. As alterações serão veiculadas OU pelo site www. e-DIGITAL OU pelo aplicativo e-DIGITAL e o usuário poderá optar por aceitar o novo conteúdo ou por cancelar o uso dos serviços, caso seja assinante de algum serviço.  Os serviços oferecidos podem, a qualquer tempo e unilateralmente, e sem qualquer aviso prévio, ser deixados de fornecer, alterados em suas características, bem como restringido para o uso ou acesso.  13. DA POLÍTICA DE PRIVACIDADE Além do presente Termo, o usuário deverá consentir com as disposições contidas na respectiva Política de Privacidade a ser apresentada a todos os interessados dentro da interface da plataforma.  14. DO FORO Para a solução de controvérsias decorrentes do presente instrumento deverá ser aplicado o for da comarca de Belo Horizonte/MG.  15. DO SUPORTE Em caso de qualquer dúvida, sugestão ou problema com a utilização da plataforma, o usuário poderá entrar em contato com o suporte, através do email contato@ e-DIGITAL a qual responderá o mais breve possível.      Explique qual sua necessidade de utilização do nosso app e a sugestão de solução será enviada pela nossa equipe especializada em demandas jurídicas.',
                                    ),
                                    textAlign: TextAlign.justify,
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: Text(
                                    'Assine e aceite os termos de uso ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF003145),
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                                SwitchListTile(
                                  value: termosValue ??= false,
                                  onChanged: (newValue) =>
                                      setState(() => termosValue = newValue),
                                  title: Text(
                                    'Aceitar os termos',
                                    textAlign: TextAlign.end,
                                    style:
                                        FlutterFlowTheme.of(context).bodyText2,
                                  ),
                                  tileColor: Color(0xFFF5F5F5),
                                  activeColor: Color(0xFF003145),
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 5, 25),
                                  child: ClipRect(
                                    child: Signature(
                                      controller: signatureController,
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .background,
                                      height: 120,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 5, 5, 20),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF14181B),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4,
                                          color: Color(0x55000000),
                                          offset: Offset(0, 2),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24, 16, 16, 16),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                4, 0, 0, 0),
                                                    child: Text(
                                                      'nosso especialista \nrespondem \nem ate 12h',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText2
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          if ((termosValue) == true)
                                            FFButtonWidget(
                                              onPressed: () async {
                                                final signatureImage =
                                                    await signatureController
                                                        .toPngBytes();

                                                if (signatureImage == null) {
                                                  return;
                                                }

                                                showUploadMessage(
                                                  context,
                                                  'Upload de arquivo',
                                                  showLoading: true,
                                                );
                                                final downloadUrl =
                                                    (await uploadData(
                                                        signatureStoragePath(
                                                            currentUserUid),
                                                        signatureImage));

                                                ScaffoldMessenger.of(context)
                                                    .hideCurrentSnackBar();
                                                if (downloadUrl != null) {
                                                  setState(() =>
                                                      uploadedSignatureUrl =
                                                          downloadUrl);
                                                  showUploadMessage(
                                                    context,
                                                    'Upload  com sucesso!',
                                                  );
                                                } else {
                                                  showUploadMessage(
                                                    context,
                                                    'Upload  falhou !',
                                                  );
                                                  return;
                                                }

                                                final processosCreateData =
                                                    createProcessosRecordData(
                                                  termo1: termosValue,
                                                );
                                                await ProcessosRecord.collection
                                                    .doc()
                                                    .set(processosCreateData);
                                                await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        CadastradoWidget(),
                                                  ),
                                                );
                                              },
                                              text: 'aceitar e enviar',
                                              options: FFButtonOptions(
                                                width: 170,
                                                height: 50,
                                                color: Color(0xFF003145),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: Colors.white,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                elevation: 3,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                        child: Icon(
                          Icons.arrow_downward,
                          color: Color(0xFF003145),
                          size: 15,
                        ),
                      ),
                      Text(
                        'rolar para baixo',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF003145),
                            ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: Icon(
                          Icons.arrow_downward,
                          color: Color(0xFF003145),
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

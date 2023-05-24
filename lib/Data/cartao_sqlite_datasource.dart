import 'package:aula_3_tela_login_2/Data/cartao_Entity.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'data_constantes.dart';

class PerfilSQLiteDatasource {
  Future<Database> _getDatabase() async {

    // await deleteDatabase(
    //  join(await getDatabasesPath(),DATABASE_NAME),
    // );
    return openDatabase(
      join(await getDatabasesPath(), DATABASE_NAME),
      onCreate: (db, version) async {
        await db.execute(CREATE_PERFIL_TABLE_SCRIPT);

        await db.rawInsert('''insert into $CARTAO_TABLE_NAME(
          $CARTAO_COLUMN_DESCRICAO,
          $CARTAO_COLUMN_NUMERO,
          $CARTAO_COLUMN_VALIDADE,
          $CARTAO_COLUMN_CVV,
          $CARTAO_COLUMN_SENHA)
          values(
            'abc','1232123412322134','0408','123', '0000')
          )''');
      },
      version: 1,
    );
  }

  Future create(CartaoEntity cartao) async {
    try{
      final Database db = await _getDatabase();
      cartao.cartaoID = await db.rawInsert('''insert into $CARTAO_TABLE_NAME(
        $CARTAO_COLUMN_DESCRICAO
        $CARTAO_COLUMN_NUMERO,
        $CARTAO_COLUMN_VALIDADE
        $CARTAO_COLUMN_CVV,
        $CARTAO_COLUMN_SENHA)
        values(
          '${cartao.descricao}','${cartao.numero}','${cartao.validade}','${cartao.cvv}','${cartao.senha}')
      )''');
    }catch(ex){
      return;
    }
  }
}
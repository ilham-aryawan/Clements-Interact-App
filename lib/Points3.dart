import 'package:gsheets/gsheets.dart';
import 'package:flutter/material.dart';

// your google auth credentials
const _credentials = r'''
{
  "type": "service_account",
  "project_id": "clements-interact-app",
  "private_key_id": "5272eae3751fd605ef9db91ceff13aba4bc93bd5",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDU862nkC+9y/AX\niYyzanTScD3acU+fRc0Af42t7z7LQL0XtHMq5JkPkBzgqp1qqXwzH4IC/L2hFoyJ\n9z+HcTxxyA0+0N6rAa6LDgG1N0n5VPpaUZcCqcxcV5pznRH4IksJO4+JdsVK3qcm\nGKhqC0h+2+JWTxewjGkMywvQH9+BkRjhbpI37HeXvyFOUokV2jdhVKwpNoT9jv1n\n8wB52BfgTI1ZsXOGiqEs9paH/2GQq8otje7QJaFSLwfLT2huV0nTPbyolocTZPwS\nwbr+MSW9ky59fbtWuYN8O61Nj8aUo4eyf0dGwTAEWawoxEQW+tUQMnlpT5YgLrbJ\nb5C9cc0rAgMBAAECggEAYUfCPCpTjOYlk3MMGggXPuz0bJ5Xy8A0wrYCUINbEbnM\nyA/wjpcoTuI8NuvqBohPSwFpQJkZvYWSBRK0bFivzqCfYGNFXSRjCnYHFLQhsGuA\nBJOCIz7TMxn33jnSNCLiWWDilN7ziNzGydH42Zy27PDg6CGwhj/WW3hEOLrevQ5o\nNr9xmRaWiL0AqUN0+8yWJW8AMQZ4HdxG7i5Hf/laBgMglUbzWpOsnwGNKFj0Sw7K\ntG7k9Z5wM49xjzo1r6fYlBnP0PEG2BucQ6AgX0G/WTRbIIsNDDDahY8ygvk2CIrY\nJ+qlI5bEvhQdsAdUImoz+S7Sbiffbz3FGzc5JEWN5QKBgQD8DgozoRpGAKpfXkqq\nqHiwmhvFcM3a5gVLnIBb3b+SXyYmVt0ULAkPkHVqeTQhSY9N/ipdrEiPwOkDa2vg\nlf6XrrefwsaQKMpA+b42OLKgq4AhfYGne/P57U9Rt3qYQAlhNegee7L2Ih0OYo1T\nr/ncK+066Uu0C759Tfc5gtRPZwKBgQDYSPTfMIef91eUQsskjhMYGq6EbY64BLst\nBYTrPwrTywc2WVI+jESDkbzRNtupy5oVCu1dchvtc/Jz6AH2wm4qQukJ3H9exQ/v\nMRtTAr422zTATLBMjaOw8taWLxGPQ+HJq0rupTOiH9RxcgOditvkcpJIPEObj1V6\njwth8XgtnQKBgERgvq3A77K77XxPxSvE5nDqbcxDTOUsb5VSkJPbdWQNAfl2qSUW\nySJ6yw+mb9jz7rd20yF0Yn71E4GE+9ACgP2/PTtPCLUFC9FSryJggT0LKYhsVucL\nvmU31sPRZaW2AZVonV7fqe4R1RYY8EQawkrTc9j+fzYJ1ZSCuSXV8yjTAoGBALC/\npkVCjoMeiZaiowpDhL0dCOM1+PzO+PuI2B+7DCkacNFsWza8QD1Y+vnqH8b5mPh7\nTpEf8EyzhT5NKlWyfH7S4Uhqxjf3SNdKxS6oPjPsHYbM5QIaedvgB5cB7hKrAbhh\n4EF4BeMGqgDvkJ7NXHerXXnkrcdRciRPA5lN0M1NAoGBANodMcqXNocg6lPmeHyN\nMn7xsJb0TJxNj19LhLynx1XQFqexbZGooE+YWMp3VVxD9NDWRWJBvT3z5SaUzW7c\npSXmnrsmbqoDhudD2BMGgFNuzjJheo2z7bk/e6MlY3Wcm0M57vTvqTQ5q+fuVoWk\n+R8vgegleAEiEFcl28jOyW8L\n-----END PRIVATE KEY-----\n",
  "client_email": "gsheets-79@clements-interact-app.iam.gserviceaccount.com",
  "client_id": "115078668850036353572",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/gsheets-79%40clements-interact-app.iam.gserviceaccount.com"
}
''';


const _spreadsheetId = 'https://docs.google.com/spreadsheets/d/1GSYMvX3ba4-41B-oD2w956M4gFsw1xGucLY_6N38R5I/edit?usp=sharing&fbclid=IwAR22DKM_Lax8LDC27Qi9EL8caEoJFvqty9eGjU_a2zf38yrhkx0RuM6mXu4';

// your spreadsheet id

class PointsPage extends StatefulWidget {
  @override
  _PointsPageState createState() => _PointsPageState();
}

class _PointsPageState extends State<PointsPage> {

  void points() async {
    // init GSheets
    final gsheets = GSheets(_credentials);
    // fetch spreadsheet by its id
    final ss = await gsheets.spreadsheet(_spreadsheetId);
    // get worksheet by its title
    var sheet = ss.worksheetByTitle('Points');
    // create worksheet if it does not exist yet
  //  sheet ??= await ss.addWorksheet('example');

    // update cell at 'B2' by inserting string 'new'
    await sheet.values.insertValue('new', column: 2, row: 2);
    // prints 'new'
    print(await sheet.values.value(column: 2, row: 2));
    // get cell at 'B2' as Cell object
  /*  final cell = await sheet.cells.cell(column: 2, row: 2);
    // prints 'new'
    print(cell.value);
    // update cell at 'B2' by inserting 'new2'
    await cell.post('new2');
    // prints 'new2'
    print(cell.value);
    // also prints 'new2'
    print(await sheet.values.value(column: 2, row: 2));

    // insert list in row #1
    final firstRow = ['index', 'letter', 'number', 'label'];
    await sheet.values.insertRow(1, firstRow);
    // prints [index, letter, number, label]
    print(await sheet.values.row(1));

    // insert list in column 'A', starting from row #2
    final firstColumn = ['0', '1', '2', '3', '4'];
    await sheet.values.insertColumn(1, firstColumn, fromRow: 2);
    // prints [0, 1, 2, 3, 4, 5]
    print(await sheet.values.column(1, fromRow: 2));

    // insert list into column named 'letter'
    final secondColumn = ['a', 'b', 'c', 'd', 'e'];
    await sheet.values.insertColumnByKey('letter', secondColumn);
    // prints [a, b, c, d, e, f]
    print(await sheet.values.columnByKey('letter'));

    // insert map values into column 'C' mapping their keys to column 'A'
    // order of map entries does not matter
    final thirdColumn = {
      '0': '1',
      '1': '2',
      '2': '3',
      '3': '4',
      '4': '5',
    };
    await sheet.values.map.insertColumn(3, thirdColumn, mapTo: 1);
    // prints {index: number, 0: 1, 1: 2, 2: 3, 3: 4, 4: 5, 5: 6}
    print(await sheet.values.map.column(3));

    // insert map values into column named 'label' mapping their keys to column
    // named 'letter'
    // order of map entries does not matter
    final fourthColumn = {
      'a': 'a1',
      'b': 'b2',
      'c': 'c3',
      'd': 'd4',
      'e': 'e5',
    };
    await sheet.values.map.insertColumnByKey(
      'label',
      fourthColumn,
      mapTo: 'letter',
    );
    // prints {a: a1, b: b2, c: c3, d: d4, e: e5, f: f6}
    print(await sheet.values.map.columnByKey('label', mapTo: 'letter'));

    // appends map values as new row at the end mapping their keys to row #1
    // order of map entries does not matter
    final secondRow = {
      'index': '5',
      'letter': 'f',
      'number': '6',
      'label': 'f6',
    };
    await sheet.values.map.appendRow(secondRow);
    // prints {index: 5, letter: f, number: 6, label: f6}
    print(await sheet.values.map.lastRow());

    // get first row as List of Cell objects
    final cellsRow = await sheet.cells.row(1);
    // update each cell's value by adding char '_' at the beginning
    cellsRow.forEach((cell) => cell.value = '_${cell.value}');
    // actually updating sheets cells
    await sheet.cells.insert(cellsRow);
    // prints [_index, _letter, _number, _label]
    print(await sheet.values.row(1));*/
  }

  Widget googleLoginButton() {
    return OutlineButton(
        onPressed: this.points,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
        splashColor: Colors.grey,
        borderSide: BorderSide(color: Colors.grey),
        child: Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                      image: AssetImage('assets/google logo.png'), height: 35),
                  Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Sign in With Google',
                        style: TextStyle(color: Colors.grey, fontSize: 25),
                      ))
                ])));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        title: Text('Navigation Page'),
    backgroundColor: Colors.blueGrey[400],
    ),
    body: googleLoginButton());
  //  return Align(alignment: Alignment.center, child: googleLoginButton());
  }
}
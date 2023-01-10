
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity ,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 0,
  required Function function,
  required String text,
}) => Container(
  width: width,
  decoration: BoxDecoration(
      color: background,
      borderRadius: BorderRadius.circular(
        radius,
    )
  ),
  child: MaterialButton(
    onPressed: (){
      function();
    },
    child:  Text(
      isUpperCase ? text.toUpperCase() : text,
      style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white
      ),
    ),
  ),
);

Widget defaultButtonValidation({
  required Function onPressed,
  required text,
  Color backgroundColor = Colors.red,
  double width = double.infinity,
  ButtonStyle? style ,
}) => SizedBox(
width: width,
child: ElevatedButton(
onPressed:() {
  onPressed();
},
style: style,
child:  Text( text ),
),
);

Widget defaultFormFiled({
  required TextEditingController controller,
  required TextInputType type,
  required Function validate,
  required String label,
  required IconData prefix,
  IconData? suffix,
  bool isPassword = false,
  Function? suffixPressed,
  Function? onChange ,
  Function? onSubmit ,
  Function? onTap,
  bool isClickable = true
}) => TextFormField(
  controller: controller,
  keyboardType: type,
  obscureText: isPassword,
  onFieldSubmitted: (s){
    onSubmit!(s);
  },
  onChanged: (s){
    onChange!(s);
  },
  onTap: (){
    onTap!();
  },
  enabled: isClickable,
  validator: (value) {
     validate(value);
  },
  decoration: InputDecoration(
    labelText: label,
    prefixIcon: Icon(
      prefix
    ),
    suffixIcon: IconButton(
      onPressed: () async{
        return await suffixPressed!();
      },
      icon: Icon(
        suffix
      ),
    ),
    border:  const OutlineInputBorder(),
  ),
);


Widget buildTaskItem(Map model) => Padding(
  padding: const EdgeInsets.all(20.0),
  child: Row(
    children:  [
       CircleAvatar(
        radius: 40,
        child: Text(
            '${model['time']}'
        ),
      ),
      const SizedBox(
        width: 20,
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          Text(
            '${model['title']}',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            '${model['date']}',
            style: const TextStyle(
                color: Colors.grey
            ),
          ),
        ],
      )
    ],
  ),
);

Widget myDivider() => Padding(
  padding: const EdgeInsetsDirectional.only(
    start: 20.0,
  ),
  child: Container(
    width: double.infinity,
    height: 1.0,
    color: Colors.grey[300],
  ),
);

Widget buildArticleItem(article, context) =>  Padding(
  padding: const EdgeInsets.all(20.0),
  child: Row(
    children: [
      Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
                10
            ),
            image:  DecorationImage(

              image: NetworkImage('${article['urlToImage']}'),
              fit: BoxFit.cover,
            )
        ),
      ),
      const SizedBox(
        width: 20,
      ),
      Expanded(
        child: Container(
          height: 120,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children:  [
              Expanded(
                child: Text(
                  '${article['title']}',
                  style: Theme.of(context).textTheme.bodyText1,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                '${article['publishedAt']}',
                style: const TextStyle(
                    color: Colors.grey
                ),
              ),
            ],
          ),
        ),
      )
    ],
  ),
);

Widget articleBuilder(list) => ConditionalBuilder(
    condition: list.length > 0,
    builder: (context) => ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context , index) => buildArticleItem(list[index],context),
        separatorBuilder: (context , index) => myDivider(),
        itemCount: list.length
    ),
    fallback: (context) => const Center(
      child: CircularProgressIndicator(),
    )
);
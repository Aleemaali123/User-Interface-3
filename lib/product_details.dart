import 'package:flutter/material.dart';

subTitle(text, text1, IconData icon) {
  return Container(
    height: 50,
    child: ListTile(
      leading: Container(
        padding: const EdgeInsets.only(left: 5, right: 70),
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      title: Text(
        text1,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.grey,
        ),
        textAlign: TextAlign.right,
      ),
      trailing: Icon(
        icon,
        size: 20,
      ),
    ),
  );
}

card(name, amount, clr) {
  return Container(
    margin: const EdgeInsets.only(left: 15, top: 7),
    height: 90,
    width: 160,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Color(clr),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 15, top: 15),
          child: Text(
            name,
            style: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 15, top: 10),
          child: Text(
            amount,
            style: const TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ],
    ),
  );
}

head(name, width, clr, tcl) {
  return Container(
    height: 35,
    width: width,
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(15), color: clr),
    margin: const EdgeInsets.only(left: 10, right: 5),
    child: Center(
      child: Text(
        name,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: tcl),
      ),
    ),
  );
}

products(image, orders, time, amount) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: const EdgeInsets.only(top: 10, bottom: 2),
        child: ListTile(
          leading: Container(
            child: Image.asset(
              image,
              height: 60,
              width: 60,
            ),
          ),
          onTap: () {},
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 0, bottom: 4),
                child: Text(
                  orders,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Text(
                time,
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[700]),
              ),
            ],
          ),
          trailing: Wrap(
            direction: Axis.vertical,
            crossAxisAlignment: WrapCrossAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 5, top: 5, bottom: 5),
                child: Text(
                  amount,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    "Successful",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700]),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(
          left: 20,
        ),
        child: Text(
          "349 deposited to:12345689",
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600]),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(left: 23, right: 23),
        child: const Divider(
          color: Colors.black,
        ),
      )
    ],
  );
}
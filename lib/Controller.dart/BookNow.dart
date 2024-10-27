class BookNow {
  List bookcarlist = [];

  bool isbook(index){
  return bookcarlist.contains(index);
  }

  void bookedhere(index){
   if (!isbook(index)) {
     bookcarlist.add(index);
   }
  //  print(bookcarlist);
  }

  void cancelride(index){
    bookcarlist.remove(index);
  }

  List getbookedcars(){
    print(bookcarlist);
    return bookcarlist;
  }

}
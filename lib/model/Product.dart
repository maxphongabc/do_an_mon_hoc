
class ProductModel {
  String Name,Image,Category,Price,Description,Id,Quantity;
  ProductModel({
    this.Id,
    this.Quantity,
    this.Category,
    this.Image,
    this.Name,
    this.Price,
    this.Description,
  });
  ProductModel.fromJson(Map<dynamic,dynamic>map){
    Id= map['Id'];
    Name = map['Name'];
    Quantity= map['Quantity'];
    Image=map['Image'];
    Category=map['Category'];
    Price=map['Price'];
    Description=map['Descriptions'];
  }
  toJson(){
    return{
      'Id':Id,
      'Name':Name,
      'Image':Image,
      'Brand':Category,
      'Price':Price,
      'Descriptions':Description,
      'Quantity':Quantity,

    };
  }
}
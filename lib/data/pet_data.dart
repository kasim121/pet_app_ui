import '../model/new_pet_detail.dart';
import '../model/pet_details.dart';
import '../resource/asset_manager.dart';

List<PetDetails> petList = [
  PetDetails(
      petName: "Hamsters", imageData: ImageAssets.pet1, totalPetNumbers: '56'),
  PetDetails(
      petName: "Cats", imageData: ImageAssets.pet2, totalPetNumbers: '210'),
  PetDetails(
      petName: "Bunnies", imageData: ImageAssets.pet3, totalPetNumbers: '90'),
  PetDetails(
      petName: "Dogs", imageData: ImageAssets.pet4, totalPetNumbers: '340'),
];
List<NewestPetDetails> newestPetListDetails = [
  NewestPetDetails(
      adoptionStatus: 'Adoption',
      imageIcon: ImageAssets.pet1,
      imageName:
          "https://images.unsplash.com/photo-1592194996308-7b43878e84a6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
      petName: 'Abysssinian Cats',
      cityName: 'California (2.5 km)'),
  NewestPetDetails(
      adoptionStatus: 'Maiting',
      imageIcon: ImageAssets.pet1,
      imageName:
          "https://images.unsplash.com/photo-1566765790386-c43812572bc2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=435&q=80",
      petName: 'Scottish Fold',
      cityName: 'New Jersy (1.5 km)'),
  NewestPetDetails(
      adoptionStatus: 'Adoption',
      imageIcon: ImageAssets.pet1,
      imageName:
          "https://images.unsplash.com/photo-1684608652506-d7faa3753aec?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=939&q=80",
      petName: 'Scottish Jack',
      cityName: 'New York (2.5 km)'),
];

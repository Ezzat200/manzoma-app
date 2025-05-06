


abstract class ManzomaStates {}

class ManzomaInitialState extends ManzomaStates {}

class SIGChangeBottomNavBarState extends ManzomaStates {}

class SIGSearchAlertState extends ManzomaStates {}

class SIGLoadingHomeDataState extends ManzomaStates {}

class StratSendUserDataState extends ManzomaStates {}

class SendUserDataSuccessState extends ManzomaStates {}

class SendUserDataErrorState extends ManzomaStates {}

class LogOutState extends ManzomaStates {}


class AccountDeleteSuccessState extends ManzomaStates {}

class SIGGetServiceSectionsState extends ManzomaStates {}


class AccountDeleteErrorState extends ManzomaStates {}
// class SIGHomeDataSuccessState extends ManzomaStates {
//   final UnitResponse unitResponse;
//   SIGHomeDataSuccessState(this.unitResponse);
// }

class SIGLoadingProjectsHomeDataState extends ManzomaStates {}

class SIGProjectsHomeDataSuccessState extends ManzomaStates {}

class SIGProjectsHomeDataErrorState extends ManzomaStates {}

class SIGLoadingMostPopularCitiesState extends ManzomaStates {}

class SIGMostPopularCitiesSuccessState extends ManzomaStates {}

class SIGMostPopularCitiesErrorState extends ManzomaStates {}

class SIGLoadingMostPopularProjectsState extends ManzomaStates {}

class SIGMostPopularProjectsSuccessState extends ManzomaStates {}

class SIGMostPopularProjectsErrorState extends ManzomaStates {}

class SIGLoadingCategoriesState extends ManzomaStates {}

class SIGCategoriesSuccessState extends ManzomaStates {}

class SIGCategoriesErrorState extends ManzomaStates {}

class SIGHomeDataErrorState extends ManzomaStates {}

class SIGChangeDescriptionState extends ManzomaStates {}

class SIGChangePropertyDetailsState extends ManzomaStates {}

class SIGChangeFeaturesState extends ManzomaStates {}

class SIGChangeFloorPlanState extends ManzomaStates {}

class SIGChangePropertyVideoState extends ManzomaStates {}

class SIGChangeVideoPlayer extends ManzomaStates {}

class SIGChangeVideoState extends ManzomaStates {}

class SIGFilterDataState extends ManzomaStates {}

class SIGLoadingFilterByManyPropsState extends ManzomaStates {}

class SIGSuccessFilterByManyPropsState extends ManzomaStates {}

class SIGErrorFilterByManyPropsState extends ManzomaStates {}

class SIGFilterDataLoadingState extends ManzomaStates {}

class SIGFilterDataSuccessState extends ManzomaStates {}

class SIGFilterDataErrorState extends ManzomaStates {}

class SIGNavigateToSearchState extends ManzomaStates {}

class UpdatedDropDownState extends ManzomaStates {}

class FilterAppliedState extends ManzomaStates {}

class FilterLoadingState extends ManzomaStates {}

class FilterSuccessState extends ManzomaStates {}

class FilterErrorState extends ManzomaStates {}

class RestAllFieldsState extends ManzomaStates {}

class CatIDState extends ManzomaStates {}

class SIGRemoveTokenState extends ManzomaStates {}

class CityIDState extends ManzomaStates {}

class ProfileLoadingState extends ManzomaStates {}

// class ProfileSuccessState extends ManzomaStates {
//   final ProfileModel? profile;

//   ProfileSuccessState({required this.profile});
// }

class ProfileErrorState extends ManzomaStates {
  final String error;

  ProfileErrorState(this.error);
}

class EditProfileLoadingState extends ManzomaStates {}

// class EditProfileSuccessState extends ManzomaStates {
//   final UpdateProfileModel? updateProfileModel;

//   EditProfileSuccessState(this.updateProfileModel);
// }

class EditProfileErrorState extends ManzomaStates {
  final String error;

  EditProfileErrorState(this.error);
}

class UpdatePasswordLoadingState extends ManzomaStates {}

// class UpdatePasswordSuccessState extends ManzomaStates {
//   final UpdatePasswordModel? updatePasswordModel;

//   UpdatePasswordSuccessState(this.updatePasswordModel);
// }

class UpdatePasswordErrorState extends ManzomaStates {
  final String error;

  UpdatePasswordErrorState(this.error);
}

class WishlistErrorState extends ManzomaStates {
  final String error;
  WishlistErrorState(this.error);
}

class WishlistLoadingState extends ManzomaStates {}

class WishlistSuccessState1 extends ManzomaStates {}

class SIGFavoritesErrorState extends ManzomaStates {}

class SIGChangeFavoritesSuccessState extends ManzomaStates {}

class SIGGetBlogsState extends ManzomaStates {}

class SIGGetServicesState extends ManzomaStates {}

// class WishlistSuccessState extends ManzomaStates {
//   FavModelTest? favModelTest;
//   WishlistSuccessState(this.favModelTest);
// }

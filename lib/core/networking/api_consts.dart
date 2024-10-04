class ApiConsts {
  ApiConsts._();
  static const signWithGoogle = '/api/protected/auth/google/user';
  static const signIn = 'auth/user/login';
  static const forgotPassword = 'auth/user/forgotPassword';
  static const verifyResetCode = 'auth/user/verifyResetCode';
  static const changePassword = 'auth/user/resetPassword';
  static const signUp = 'auth/user/signup';
  static const rideRequest = 'rideRequests/booking';
  static const addCommute = 'user/addCommute/{id}';
  static const joinCommute = 'users/requestJoinCommute/{driverId}/{commuteId}';
  static const me = 'users/{id}';
  static const getDriver = 'drivers/{id}';
  static const rooms = 'msg/rooms/{id}/user';
  static const getUnreadNotifisEndPoint = 'notifications/not-read/{id}';
  static const getReadNotifisEndPoint = 'notifications/read/{id}';
  static const readNotifisEndPoint = 'notifications/{notifiId}/read';
  static const delNotifiEndPoint = 'notifications/del/{userId}/{notifiId}';
  static const sendFcmToken = 'register/fcm/user/{id}';
  static const getNearByCommuters = 'commute/getNearbyCommutes';
}

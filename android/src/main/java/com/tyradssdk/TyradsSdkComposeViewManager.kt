// package com.tyradssdk

// import android.content.Context
// import androidx.compose.runtime.Composable
// import androidx.compose.ui.platform.ComposeView
// import com.facebook.react.bridge.ReactContext
// import com.facebook.react.uimanager.SimpleViewManager
// import com.facebook.react.uimanager.ThemedReactContext
// import com.facebook.react.uimanager.annotations.ReactProp
// import com.tyrads.sdk.Tyrads
// import android.util.Log
// import androidx.compose.foundation.background
// import androidx.compose.foundation.layout.Box
// import androidx.compose.foundation.layout.fillMaxSize
// import androidx.compose.material.Text
// import androidx.compose.ui.Alignment
// import androidx.compose.ui.Modifier
// import androidx.compose.ui.graphics.Color
// import androidx.compose.runtime.LaunchedEffect
// import android.os.Handler
// import android.os.Looper

// class ComposeViewManager : SimpleViewManager<ComposeView>() {
//     override fun getName(): String {
//         return "TyradsSdkComposeView"
//     }

//   override fun createViewInstance(reactContext: ThemedReactContext): ComposeView {
//     Log.d("bmd", "ComposeView created")

//     val composeView = ComposeView(reactContext)

//     Handler(Looper.getMainLooper()).post {
//       Log.d("bmd", "Running setContent inside createViewInstance")

//       composeView.setContent {
//         Box(
//           modifier = Modifier
//             .fillMaxSize()
//             .background(Color.Yellow),
//           contentAlignment = Alignment.Center
//         ) {
//           Text("Test Compose", color = Color.Black)
//         }
//       }
//     }

//     return composeView
//   }

//     @ReactProp(name = "showMore")
//     fun setShowMore(view: ComposeView, showMore: Boolean) {
//       view.post {
//         view.setContent {
//           TopPremiumOffersComposable(showMore = showMore)
//         }
//       }
//     }

//     @ReactProp(name = "showMyOffers")
//     fun setShowMyOffers(view: ComposeView, showMyOffers: Boolean) {
//         view.post{
//             view.setContent {
//               TopPremiumOffersComposable(showMyOffers = showMyOffers)
//             }
//         }
//     }

//     @ReactProp(name = "showMyOffersEmptyView")
//     fun setShowMyOffersEmptyView(view: ComposeView, showMyOffersEmptyView: Boolean) {
//         view.post{
//           view.setContent {
//             TopPremiumOffersComposable(showMyOffersEmptyView = showMyOffersEmptyView)
//           }
//         }
//     }

//     @ReactProp(name = "viewStyle")
//     fun setViewStyle(view: ComposeView, viewStyle: Int) {
//         view.post{
//           view.setContent {
//             TopPremiumOffersComposable(style = viewStyle)
//           }
//         }
//     }

//     @Composable
//     private fun TopPremiumOffersComposable(
//         showMore: Boolean = true,
//         showMyOffers: Boolean = true,
//         showMyOffersEmptyView: Boolean = false,
//         style: Int = 2
//     ) {
//       LaunchedEffect(Unit){
//         Log.d("bmd", "TopPremiumOffersComposable called")
//       }
//       Box(
//         modifier = Modifier
//           .fillMaxSize()
//           .background(Color.Yellow),
//         contentAlignment = Alignment.Center
//       ) {
//         Text("Test Compose", color = Color.Black)
//       }
//         // Tyrads.getInstance().TopPremiumOffers(
//         //     showMore = showMore,
//         //     showMyOffers = showMyOffers,
//         //     showMyOffersEmptyView = showMyOffersEmptyView,
//         //     style = style
//         // )
//     }
// }

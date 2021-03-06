import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule, Routes } from '@angular/router';

import { HomeScreenComponent } from './components/screens/home-screen/home-screen.component';
import { SignInComponent } from './components/user-authentication/sign-in/sign-in.component';
import { SignUpComponent } from './components/user-authentication/sign-up/sign-up.component'; 
import { ForgotPasswordComponent } from './components/user-authentication/forgot-password/forgot-password.component';
import { InsertScreenComponent } from './components/screens/insert-screen/insert-screen.component';
import { ModifyScreenComponent } from './components/screens/modify-screen/modify-screen.component';
import { SearchScreenComponent } from './components/screens/search-screen/search-screen.component';
import { BsearchScreenComponent } from './components/screens/bsearch-screen/bsearch-screen.component';

const routes: Routes = [
  {path: 'login', component: SignInComponent},
  {path: 'sign-up', component: SignUpComponent},
  {path: 'forgot-password', component: ForgotPasswordComponent},
  {path: '', redirectTo: '/login', pathMatch: 'full'},
  {path: 'home-screen', component: HomeScreenComponent},
  {path: 'insert-screen', component: InsertScreenComponent},
  {path: 'modify-screen', component: ModifyScreenComponent},
  {path: 'search', component: SearchScreenComponent},
  {path: 'bsearch', component: BsearchScreenComponent},
]

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule { }

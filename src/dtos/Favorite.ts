import { IBase } from "./Base";


export interface IFavorite extends IBase, IFavoriteRequest {}

export interface IFavoriteRequest {
  title: string;
  id_user: string;
}

export interface IUpdateFavoriteRequest {
  title: string;
}
import { IBase } from "./Base";


export interface IPlaylist extends IBase, IPlaylistRequest {}

export interface IPlaylistRequest {
  title: string;
  id_user: string;
}

export interface IUpdatePlaylistRequest {
  title: string;
}
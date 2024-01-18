import { IBase } from "./Base";


export interface IPlaylistContent extends IBase, IPlaylistContentRequest {}

export interface IPlaylistContentRequest {
  id_playlist: string;
  id_content: string;
}
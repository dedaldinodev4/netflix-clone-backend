import { IBase } from "./Base";


export interface IUser extends IBase, IUserRequest {
  status: boolean;
  name: string | null;
}

export interface IUserRequest {
  email: string;
  password: string;
}

export interface IUpdateUserRequest {
  name: string | null;
}

export interface IUpdateCredentials {
  email: string;
  password: string;
}
@extends('layouts.user')
@section('title','Hồ sơ người dùng')
<style>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
.container {
  width: 40%;
  margin: 30px auto;
  box-shadow: rgba(0, 0, 0, 0.15) 1.95px 1.95px 2.6px;
}
.tabs {
  display: flex;
  list-style: none;
}
.tabs li {
  display: block;
  width: 33.33%;
  text-align: center;
  background-color: #f6f6f6;
  padding: 15px 35px;
  border: 1px solid #ccc;
  cursor: pointer;
  font-size: 17px;
}
.tabs li.active,
.tabs li:hover {
  background-color: #fff;
  border: none;
  border-top: 4px solid #1db9c3;
  transition: 0.1s;
}

.container .content .profile,
.container .content .settings,
.container .content .about {
  padding: 40px 25px 25px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}
.container .content > div:not(.visible) {
  display: none;
}
.container .content h3 {
  margin: 15px 0;
}
.container .content .profile img {
  border-radius: 75px;
  margin-bottom: 25px;
}
.container .content .profile table {
  margin-bottom: 35px;
  width: 80%;
}
.container .content table td {
  padding: 7px 0;
  font-weight: 300;
  /* width: 180px; */
}
.container .content .profile table td.title {
  font-weight: bold;
}
.container .content .profile table td:not(.title) {
  text-align: center;
}
.container .content .settings input:not([type="submit"]):not([type="reset"]) {
  padding: 3px 10px;
  outline: none;
  width: 100%;
}
.container .content hr {
  width: 100%;
  margin: 25px 0 25px;
  height: 2px;
  background-color: #1db9c3;
}
.container button,
input[type="submit"],
input[type="reset"] {
  padding: 10px 15px;
  border: none;
  border-radius: 7px;
  outline: none;
  cursor: pointer;
}
.container button:hover,
input[type="submit"]:hover,
input[type="reset"]:hover {
  letter-spacing: 1.1px;
  transition: 0.4s;
}
.container .primary {
  background-color: #00a19d;
}
.container .danger {
  background-color: #b61919;
  color: #fff;
}
.container .secondary {
  background-color: #ddd;
}
.container .content .settings td {
  padding: 7px 0;
}
.container .content p {
  padding: 50px;
  line-height: 1.5;
  text-align: center;
  font-size: 18px;
}

</style>
@section('content')
<div class="container">
    <ul class="tabs">
      <li class="active" id="profileTab" data-content="profile">Profile</li>
      <li id="settingtab" data-content="settings">Settings</li>
      <li id="aboutTab" data-content="about">About Us</li>
    </ul>
    <div class="content">
      <div class="profile visible">
        <img src="https://via.placeholder.com/150" alt="" />
        <h3>Profile</h3>
        <table>
          <tr>
            <td class="title">Name :</td>
            <td>The Name</td>
          </tr>
          <tr>
            <td class="title">Last Name :</td>
            <td>The LastName</td>
          </tr>
          <tr>
            <td class="title">Date Birth :</td>
            <td>Feb 20, 2001</td>
          </tr>
          <tr>
            <td class="title">City :</td>
            <td>The City</td>
          </tr>
          <tr>
            <td class="title">Phone Number :</td>
            <td>999 123 456 0789</td>
          </tr>
          <tr>
            <td class="title">Email :</td>
            <td>email@mail.mail</td>
          </tr>
        </table>

        <hr />
        <div class="action">
          <button class="primary" id="editInfo">Edit Information</button>
          <button class="danger">Delete Account</button>
        </div>
      </div>
      <div class="settings">
        <h3>Change Password</h3>
        <form action="" class="changePass">
          <table>
            <tr>
              <td><label for="currentPass">Current Password : </label></td>
              <td>
                <input type="password" name="currentPass" id="currentPass" />
              </td>
            </tr>
            <tr>
              <td><label for="newPass">New Password : </label></td>
              <td>
                <input type="password" name="newPass" id="newPass" /><br />
              </td>
            </tr>
            <tr>
              <td>
                <label for="newPassConfirm">Confirm New Password : </label>
              </td>
              <td>
                <input
                  type="password"
                  name="newPassconfirm"
                  id="newPassConfirm"
                />
              </td>
            </tr>
            <tr>
              <td></td>
              <td>
                <input type="submit" value="Change" class="primary" />
                <input type="reset" value="Cancel" class="secondary" />
              </td>
            </tr>
          </table>
        </form>
        <hr />
        <h3>Modify Information</h3>
        <form action="" class="modifyInfo">
          <table>
            <tr>
              <td class="title">Name :</td>
              <td><input type="text" name="name" /></td>
            </tr>
            <tr>
              <td class="title">Last Name :</td>
              <td><input type="text" name="lastName" /></td>
            </tr>
            <tr>
              <td class="title">Date Birth :</td>
              <td><input type="date" name="dateBirth" /></td>
            </tr>
            <tr>
              <td class="title">City :</td>
              <td><input type="text" name="city" /></td>
            </tr>
            <tr>
              <td class="title">Phone Number :</td>
              <td><input type="text" name="phone" /></td>
            </tr>
            <tr>
              <td class="title">Email :</td>
              <td><input type="email" name="email" /></td>
            </tr>
            <tr>
              <td></td>
              <td>
                <input type="submit" value="Change" class="primary" />
                <input type="reset" value="Cancel" class="secondary" />
              </td>
            </tr>
          </table>
        </form>
      </div>
      <div class="about">
        <h3>About Us</h3>
        <p>
          This is a simple Tab made with love using Html and Css and
          JavaScript, the purpose of creating this tab is to practice
          JavaScript after learning.
        </p>
      </div>
    </div>
  </div>
  <script>
    let tabs = Array.from(document.querySelectorAll(".tabs li"));
let contents = Array.from(document.querySelectorAll(".content > div"));

tabs.forEach((element) => {
  element.addEventListener("click", (event) => {
    tabs.forEach((ele) => ele.classList.remove("active"));
    event.target.classList.add("active");
    contents.forEach((content) => {
      content.classList.remove("visible");
      //   content.classList.contains(event.target.dataset.content)
      //     ? content.classList.add("visible")
      //     : "";
      console.log(event.target.dataset.content);
      document
        .querySelector(`.${event.target.dataset.content}`)
        .classList.add("visible");
    });
  });
});

  </script>
@endsection

$input_uname = $_GET['username'];
$input_pwd = $_GET['Password'];
$hashed_pwd = sha1($input_pwd);
...
$sql = "SELECT id, name, eid, salary, birth, ssn, address, email,
        nickname, Password
        FROM credential
        WHERE name= 'admin' or 1=1 #' and Password='$hashed_pwd'";


$hashed_pwd = sha1($input_pwd);
$sql = "UPDATE credential SET 
        nickname='Alice', salary=99999 where name='Alice'; #',
        email='$input_email',
        address='$input_address',
        Password='$hashed_pwd',
        PhoneNumber='$input_phonenumber'
        WHERE ID=$id;";
$conn->query($sql);

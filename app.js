const tableRow = document.querySelectorAll(".list__row");
const overlay = document.querySelector(".overlay");
const sidebar = document.querySelector(".sidebar");
const closeOverlayBtn = document.querySelector(".button--close");

const sidebarClose = () => {
  sidebar.classList.remove("is-open");
  overlay.style.opacity = 0;
  setTimeout(() => {
    overlay.classList.remove("is-open");
    overlay.style.opacity = 1;
  }, 300);
};

tableRow.forEach(tableRow => {
  tableRow.addEventListener("click", function () {
    overlay.style.opacity = 0;
    overlay.classList.add("is-open");
    sidebar.classList.add("is-open");
    setTimeout(() => {
      overlay.style.opacity = 1;
    }, 100);

    // Sidebar content
    const sidebarBody = document.querySelector(".sidebar__body");
    sidebarBody.innerHTML = '';

    const driverPlace = this.querySelector(".list__cell:nth-of-type(1) .list__value").innerHTML;
    const driverName = this.querySelector(".list__cell:nth-of-type(2) .list__value").innerHTML;
    const driverTeam = this.querySelector(".list__cell:nth-of-type(3) .list__value").innerHTML;
    const driverPoints = this.querySelector(".list__cell:nth-of-type(4) .list__value").innerHTML;
    const totalScore=this.querySelector(".list__cell:nth-of-type(5) .list__value").innerHTML;
    const a1=this.querySelector(".list__cell:nth-of-type(7) .list__value").innerHTML;
    const a2=this.querySelector(".list__cell:nth-of-type(8) .list__value").innerHTML;
    const a3=this.querySelector(".list__cell:nth-of-type(9) .list__value").innerHTML;
    const a4=this.querySelector(".list__cell:nth-of-type(10) .list__value").innerHTML;
    const a5=this.querySelector(".list__cell:nth-of-type(11) .list__value").innerHTML;
    const a6=this.querySelector(".list__cell:nth-of-type(12) .list__value").innerHTML;
    const a7=this.querySelector(".list__cell:nth-of-type(13) .list__value").innerHTML;
    const a8=this.querySelector(".list__cell:nth-of-type(14) .list__value").innerHTML;
    const a9=this.querySelector(".list__cell:nth-of-type(15) .list__value").innerHTML;
    const a10=this.querySelector(".list__cell:nth-of-type(16) .list__value").innerHTML;
    const a11=this.querySelector(".list__cell:nth-of-type(17) .list__value").innerHTML;
    const a12=this.querySelector(".list__cell:nth-of-type(18) .list__value").innerHTML;
    const a13=this.querySelector(".list__cell:nth-of-type(19) .list__value").innerHTML;
    const a14=this.querySelector(".list__cell:nth-of-type(20) .list__value").innerHTML;
    const a15=this.querySelector(".list__cell:nth-of-type(21) .list__value").innerHTML;
    const driverImage = this.dataset.image;
    const driverNationality = this.dataset.nationality;
    const driverDOB = this.dataset.dob;
    const driverCountry = this.dataset.country;

    const newDriver = document.createElement('div');
    newDriver.classList = 'driver';

    const driverContent = document.createElement('div');
    driverContent.classList = 'driver__content';

    const profile = document.createElement('div');
    profile.classList = 'driver__image';
    profile.style.backgroundImage = `url('${driverImage}')`;
    newDriver.appendChild(profile);

    const driverTitle = document.createElement('div');
    driverTitle.classList = 'driver__title';
    driverTitle.innerHTML = driverName;
    driverContent.appendChild(driverTitle);

    const driverInfo = document.createElement('div');
    driverInfo.innerHTML = `
		<table class="driver__table">
			<tbody>
				<tr>
					<td><small>City</small></td>
					<td>${driverTeam}</td>
				</tr>
				<tr>
					<td><small>State</small></td>
					<td>${driverPoints}</td>
				</tr>
                <tr>
					<td><small>Rank</small></td>
					<td>${driverPlace}</td>
				</tr>
                <tr>
					<td><small>Score</small></td>
					<td>${totalScore}</td>
				</tr>
                <tr>
					<td><small>Teacher Welfare</small></td>
					<td>${a1}</td>
				</tr>
               <tr>
					<td><small>Score</small></td>
					<td>${a2}</td>
				</tr>
               <tr>
					<td><small>Score</small></td>
					<td>${a3}</td>
				</tr>
                <tr>
					<td><small>Score</small></td>
					<td>${a4}</td>
				</tr>
                <tr>
					<td><small>Score</small></td>
					<td>${a5}</td>
				</tr>
                <tr>
					<td><small>Score</small></td>
					<td>${a6}</td>
				</tr>
               <tr>
					<td><small>Score</small></td>
					<td>${a7}</td>
				</tr>
               <tr>
					<td><small>Score</small></td>
					<td>${a8}</td>
				</tr>
                <tr>
					<td><small>Score</small></td>
					<td>${a9}</td>
				</tr>
                <tr>
					<td><small>Score</small></td>
					<td>${a10}</td>
				</tr>
                <tr>
					<td><small>Score</small></td>
					<td>${a11}</td>
				</tr>
               <tr>
					<td><small>Score</small></td>
					<td>${a12}</td>
				</tr>
               <tr>
					<td><small>Score</small></td>
					<td>${a13}</td>
				</tr>
                <tr>
					<td><small>Score</small></td>
					<td>${a14}</td>
				</tr>
                <tr>
					<td><small>Score</small></td>
					<td>${a15}</td>
				</tr>
			</tbody>
		</table>`;
    driverContent.appendChild(driverInfo);
    newDriver.appendChild(driverContent);
    sidebarBody.appendChild(newDriver);

  });
});

closeOverlayBtn.addEventListener("click", function () {
  sidebarClose();
});

overlay.addEventListener("click", function () {
  sidebarClose();
});
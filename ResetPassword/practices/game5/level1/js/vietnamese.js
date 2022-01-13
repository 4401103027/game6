
function vietnamcode(t, bee){
    if (t == 'ơ' || t  == 'ư') {
        const position = beePositions.get('w')
        console.log("bee", bee);
        console.log(position);
      
        //this.typedMessage += e.key;
        // if (position) {
        //     bee.setPosition(position.x, position.y);
        // }
    }
    else {
        // bee.visible = true;
        const position = beePositions.get(t);
        // bee.x
        // if (position) {
        //     bee.setPosition(position.x, position.y);
        // }
        console.log(position);
    }
    console.log("t: ", t);
}
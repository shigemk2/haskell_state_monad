var bf = "+++++++++[>++++++++<-]>.";

var jmp = [];
for (var i = 0, loops = []; i < bf.length; ++i) {
    jmp[i] = 0;
    switch (bf[i]) {
    case '[':
        loops.push(i);
        break;
    case ']':
        var start = loops.pop();
        jmp[start] = i;
        jmp[i] = start;
        break;
    }
}
console.log(jmp);

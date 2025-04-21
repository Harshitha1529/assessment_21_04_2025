const countVowels = (str) =>{
    const vowels = 'aeiou';
    let count = 0;
    for (let char of str.toLowerCase()){
        if(vowels.includes(char)){
            count++;
        }
    }
    return count;
};
console.log(countVowels('Hello world'));
console.log("========================");

// 2. flatten and sort
const flattenAndSort = (nestedArray) =>{
    const flattened = nestedArray.flat(Infinity);
    const uniqueSorted = [...new Set(flattened)].sort((a,b)=>a-b);
    return uniqueSorted;
} ;
console.log(flattenAndSort([[3,2,1],[4,5,2],[1,6]]));

console.log("========================");

// 3.
const getCategorySummary = (expenses)=> {
    const summary = {};
    let highestExpense = 0;
    let highestCategory = '';
    for (const expense of expenses){
        const{category , amount}= expense;
        summary[category] = (summary[category] || 0)  + amount;
        if (summary[category] > highestExpense){
            highestExpense = summary[category];
            highestCategory = category;
        }
    }
    summary.highestExpense =  highestCategory;
    return summary;
};
const expenses=[
    {catetgory: "Food", amount :120},
    {catetgory: "Travel", amount :300},
    {catetgory: "Food", amount :80},
    {catetgory: "Bills", amount :200},
    {catetgory: "Travel", amount :100},
];
console.log(getCategorySummary(expenses));
console.log("========================");



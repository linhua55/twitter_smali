.class public Lcom/twitter/android/qg;
.super Landroid/widget/BaseAdapter;
.source "Twttr"


# instance fields
.field protected a:[Lcom/twitter/android/qh;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/twitter/android/qh;)V
    .locals 2

    .prologue
    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/twitter/android/qh;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/twitter/android/qg;-><init>([Lcom/twitter/android/qh;)V

    .line 19
    return-void
.end method

.method public constructor <init>([Lcom/twitter/android/qh;)V
    .locals 1

    .prologue
    .line 22
    const v0, 0x7f04037a

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/qg;-><init>([Lcom/twitter/android/qh;I)V

    .line 23
    return-void
.end method

.method public constructor <init>([Lcom/twitter/android/qh;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/twitter/android/qg;->a:[Lcom/twitter/android/qh;

    .line 27
    iput p2, p0, Lcom/twitter/android/qg;->b:I

    .line 28
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/twitter/android/qg;->a:[Lcom/twitter/android/qh;

    aget-object v0, v0, p1

    iput p2, v0, Lcom/twitter/android/qh;->a:I

    .line 53
    invoke-virtual {p0}, Lcom/twitter/android/qg;->notifyDataSetChanged()V

    .line 54
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/twitter/android/qg;->a:[Lcom/twitter/android/qh;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/twitter/android/qg;->a:[Lcom/twitter/android/qh;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/twitter/android/qh;->c:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 42
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 47
    iget v0, p0, Lcom/twitter/android/qg;->b:I

    iget-object v1, p0, Lcom/twitter/android/qg;->a:[Lcom/twitter/android/qh;

    aget-object v1, v1, p1

    sget v2, Lcom/twitter/library/util/al;->a:F

    invoke-static {v0, p2, p3, v1, v2}, Lcom/twitter/android/qi;->a(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/twitter/android/qh;F)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

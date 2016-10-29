.class public Lcom/twitter/android/client/bl;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/twitter/android/client/bl;->a:Landroid/view/View;

    .line 24
    iput-object p2, p0, Lcom/twitter/android/client/bl;->b:Landroid/widget/ListView;

    .line 25
    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/twitter/android/client/bl;
    .locals 2

    .prologue
    .line 18
    const v0, 0x7f13072f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 19
    new-instance v1, Lcom/twitter/android/client/bl;

    invoke-direct {v1, p0, v0}, Lcom/twitter/android/client/bl;-><init>(Landroid/view/View;Landroid/widget/ListView;)V

    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/twitter/android/client/bl;->a:Landroid/view/View;

    invoke-static {v0}, Lcom/twitter/util/d;->c(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    .line 29
    return-void
.end method

.method public a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/twitter/android/client/bl;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 41
    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/twitter/android/client/bl;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 37
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/twitter/android/client/bl;->a:Landroid/view/View;

    invoke-static {v0}, Lcom/twitter/util/d;->a(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    .line 33
    return-void
.end method

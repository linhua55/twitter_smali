.class Lcom/twitter/android/ml;
.super Lach;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lach",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/ProfileActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/ProfileActivity;)V
    .locals 0

    .prologue
    .line 3004
    iput-object p1, p0, Lcom/twitter/android/ml;->a:Lcom/twitter/android/ProfileActivity;

    invoke-direct {p0}, Lach;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/ProfileActivity;Lcom/twitter/android/mc;)V
    .locals 0

    .prologue
    .line 3004
    invoke-direct {p0, p1}, Lcom/twitter/android/ml;-><init>(Lcom/twitter/android/ProfileActivity;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 3007
    iget-object v0, p0, Lcom/twitter/android/ml;->a:Lcom/twitter/android/ProfileActivity;

    invoke-static {v0}, Lcom/twitter/android/ProfileActivity;->h(Lcom/twitter/android/ProfileActivity;)Lcom/twitter/android/qg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3008
    iget-object v0, p0, Lcom/twitter/android/ml;->a:Lcom/twitter/android/ProfileActivity;

    iget-boolean v0, v0, Lcom/twitter/android/ProfileActivity;->C:Z

    iget-object v1, p0, Lcom/twitter/android/ml;->a:Lcom/twitter/android/ProfileActivity;

    iget-object v1, v1, Lcom/twitter/android/ProfileActivity;->D:Lcom/twitter/model/core/TwitterUser;

    invoke-static {v0, v1}, Lcom/twitter/android/profiles/as;->a(ZLcom/twitter/model/core/TwitterUser;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 3009
    iget-object v0, p0, Lcom/twitter/android/ml;->a:Lcom/twitter/android/ProfileActivity;

    invoke-static {v0}, Lcom/twitter/android/ProfileActivity;->i(Lcom/twitter/android/ProfileActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3010
    iget-object v0, p0, Lcom/twitter/android/ml;->a:Lcom/twitter/android/ProfileActivity;

    invoke-static {v0}, Lcom/twitter/android/ProfileActivity;->j(Lcom/twitter/android/ProfileActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3011
    iget-object v0, p0, Lcom/twitter/android/ml;->a:Lcom/twitter/android/ProfileActivity;

    invoke-static {v0}, Lcom/twitter/android/ProfileActivity;->h(Lcom/twitter/android/ProfileActivity;)Lcom/twitter/android/qg;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/twitter/android/qg;->a(II)V

    .line 3018
    :cond_0
    :goto_0
    return-void

    .line 3013
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/ml;->a:Lcom/twitter/android/ProfileActivity;

    invoke-static {v0}, Lcom/twitter/android/ProfileActivity;->i(Lcom/twitter/android/ProfileActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3014
    iget-object v0, p0, Lcom/twitter/android/ml;->a:Lcom/twitter/android/ProfileActivity;

    invoke-static {v0}, Lcom/twitter/android/ProfileActivity;->j(Lcom/twitter/android/ProfileActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3015
    iget-object v0, p0, Lcom/twitter/android/ml;->a:Lcom/twitter/android/ProfileActivity;

    invoke-static {v0}, Lcom/twitter/android/ProfileActivity;->h(Lcom/twitter/android/ProfileActivity;)Lcom/twitter/android/qg;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/twitter/android/qg;->a(II)V

    goto :goto_0
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3004
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/twitter/android/ml;->a(Ljava/lang/Integer;)V

    return-void
.end method

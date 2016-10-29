.class Lcom/twitter/android/gp;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/twitter/library/view/aa;

.field private b:Lcom/twitter/model/core/Tweet;

.field private c:Lcom/twitter/model/core/cx;


# direct methods
.method constructor <init>(Lcom/twitter/library/view/aa;)V
    .locals 0

    .prologue
    .line 1094
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1095
    iput-object p1, p0, Lcom/twitter/android/gp;->a:Lcom/twitter/library/view/aa;

    .line 1096
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/Tweet;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1106
    iput-object v0, p0, Lcom/twitter/android/gp;->b:Lcom/twitter/model/core/Tweet;

    .line 1107
    iput-object v0, p0, Lcom/twitter/android/gp;->c:Lcom/twitter/model/core/cx;

    .line 1108
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ae()Lcom/twitter/model/core/bm;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/model/core/bm;->c:Lcom/twitter/model/core/j;

    invoke-virtual {v0}, Lcom/twitter/model/core/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1109
    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->ae()Lcom/twitter/model/core/bm;

    move-result-object v0

    iget-object v0, v0, Lcom/twitter/model/core/bm;->c:Lcom/twitter/model/core/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/j;->a(I)Lcom/twitter/model/core/e;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cx;

    iput-object v0, p0, Lcom/twitter/android/gp;->c:Lcom/twitter/model/core/cx;

    .line 1110
    iput-object p1, p0, Lcom/twitter/android/gp;->b:Lcom/twitter/model/core/Tweet;

    .line 1112
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/twitter/android/gp;->b:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/gp;->c:Lcom/twitter/model/core/cx;

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/twitter/android/gp;->a:Lcom/twitter/library/view/aa;

    iget-object v1, p0, Lcom/twitter/android/gp;->b:Lcom/twitter/model/core/Tweet;

    iget-object v2, p0, Lcom/twitter/android/gp;->c:Lcom/twitter/model/core/cx;

    invoke-interface {v0, v1, v2}, Lcom/twitter/library/view/aa;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/model/core/cx;)V

    .line 1103
    :cond_0
    return-void
.end method

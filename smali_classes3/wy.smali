.class public abstract Lwy;
.super Ljava/lang/Object;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/model/dms/b;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/twitter/model/dms/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final b:Lbnt;

.field final c:I

.field final d:Lbnt;

.field final e:Landroid/view/View;

.field final f:Landroid/widget/TextView;

.field final g:Landroid/content/Context;

.field final h:Landroid/content/res/Resources;

.field final i:J

.field final j:Lcom/twitter/android/dl;


# direct methods
.method constructor <init>(Lwz;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwz",
            "<TT;+",
            "Lxa;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iget-object v0, p1, Lwz;->b:Lcom/twitter/model/dms/b;

    iput-object v0, p0, Lwy;->a:Lcom/twitter/model/dms/b;

    .line 38
    invoke-static {p1}, Lwz;->a(Lwz;)Lbnt;

    move-result-object v0

    iput-object v0, p0, Lwy;->b:Lbnt;

    .line 39
    iget-object v0, p0, Lwy;->b:Lbnt;

    iget v0, v0, Lbnt;->g:I

    iput v0, p0, Lwy;->c:I

    .line 40
    invoke-static {p1}, Lwz;->b(Lwz;)Lbnt;

    move-result-object v0

    iput-object v0, p0, Lwy;->d:Lbnt;

    .line 42
    invoke-static {p1}, Lwz;->c(Lwz;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lwy;->g:Landroid/content/Context;

    .line 43
    iget-object v0, p0, Lwy;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lwy;->h:Landroid/content/res/Resources;

    .line 44
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lwy;->i:J

    .line 45
    invoke-static {p1}, Lwz;->d(Lwz;)Lcom/twitter/android/dl;

    move-result-object v0

    iput-object v0, p0, Lwy;->j:Lcom/twitter/android/dl;

    .line 47
    iget-object v0, p1, Lwz;->a:Lxa;

    .line 48
    invoke-static {v0}, Lxa;->a(Lxa;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lwy;->e:Landroid/view/View;

    .line 49
    invoke-static {v0}, Lxa;->b(Lxa;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lwy;->f:Landroid/widget/TextView;

    .line 50
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method b()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 55
    iget-object v0, p0, Lwy;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwy;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lwy;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lwy;->j:Lcom/twitter/android/dl;

    iget-object v1, p0, Lwy;->a:Lcom/twitter/model/dms/b;

    iget-wide v2, v1, Lcom/twitter/model/dms/b;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/dl;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lwy;->j:Lcom/twitter/android/dl;

    invoke-virtual {v0}, Lcom/twitter/android/dl;->b()I

    move-result v0

    .line 59
    iget-object v1, p0, Lwy;->e:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v1, p0, Lwy;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lwy;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0007

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :cond_0
    return-void
.end method

.method c()Z
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lwy;->a:Lcom/twitter/model/dms/b;

    iget-wide v2, p0, Lwy;->i:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/dms/b;->b(J)Z

    move-result v0

    return v0
.end method

.class Lcom/twitter/android/composer/bz;
.super Lcom/twitter/ui/view/a;
.source "Twttr"


# instance fields
.field final synthetic a:J

.field final synthetic b:[J

.field final synthetic c:Lcom/twitter/model/core/Tweet;

.field final synthetic d:Lcom/twitter/android/composer/by;


# direct methods
.method constructor <init>(Lcom/twitter/android/composer/by;IIZJ[JLcom/twitter/model/core/Tweet;)V
    .locals 1

    .prologue
    .line 80
    iput-object p1, p0, Lcom/twitter/android/composer/bz;->d:Lcom/twitter/android/composer/by;

    iput-wide p5, p0, Lcom/twitter/android/composer/bz;->a:J

    iput-object p7, p0, Lcom/twitter/android/composer/bz;->b:[J

    iput-object p8, p0, Lcom/twitter/android/composer/bz;->c:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0, p2, p3, p4}, Lcom/twitter/ui/view/a;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/twitter/app/users/q;

    invoke-direct {v1}, Lcom/twitter/app/users/q;-><init>()V

    iget-wide v2, p0, Lcom/twitter/android/composer/bz;->a:J

    .line 86
    invoke-virtual {v1, v2, v3}, Lcom/twitter/app/users/q;->c(J)Lcom/twitter/app/users/q;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/composer/bz;->b:[J

    .line 87
    invoke-virtual {v1, v2}, Lcom/twitter/app/users/q;->a([J)Lcom/twitter/app/users/q;

    move-result-object v1

    const/16 v2, 0x2a

    .line 88
    invoke-virtual {v1, v2}, Lcom/twitter/app/users/q;->a(I)Lcom/twitter/app/users/q;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/composer/bz;->c:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v2, Lcom/twitter/model/core/Tweet;->C:J

    .line 89
    invoke-virtual {v1, v2, v3}, Lcom/twitter/app/users/q;->b(J)Lcom/twitter/app/users/q;

    move-result-object v1

    const/4 v2, 0x1

    .line 90
    invoke-virtual {v1, v2}, Lcom/twitter/app/users/q;->b(Z)Lcom/twitter/app/users/q;

    move-result-object v1

    .line 91
    invoke-virtual {v1, v0}, Lcom/twitter/app/users/q;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 92
    return-void
.end method

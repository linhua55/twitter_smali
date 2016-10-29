.class Lwq;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/base/m;


# instance fields
.field final synthetic a:Lwo;


# direct methods
.method constructor <init>(Lwo;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lwq;->a:Lwo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;II)V
    .locals 1

    .prologue
    .line 128
    const/4 v0, -0x1

    if-ne v0, p3, :cond_1

    .line 129
    iget-object v0, p0, Lwq;->a:Lwo;

    invoke-static {v0}, Lwo;->b(Lwo;)Lcom/twitter/android/composer/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/composer/bi;->k()V

    .line 130
    iget-object v0, p0, Lwq;->a:Lwo;

    invoke-static {v0}, Lwo;->c(Lwo;)Lwr;

    move-result-object v0

    invoke-interface {v0}, Lwr;->a()V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const/4 v0, -0x2

    if-ne v0, p3, :cond_0

    .line 132
    iget-object v0, p0, Lwq;->a:Lwo;

    invoke-static {v0}, Lwo;->b(Lwo;)Lcom/twitter/android/composer/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/composer/bi;->l()V

    goto :goto_0
.end method

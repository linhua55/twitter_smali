.class Lzu;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lzo;


# direct methods
.method constructor <init>(Lzo;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lzu;->a:Lzo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 296
    iget-object v0, p0, Lzu;->a:Lzo;

    invoke-static {v0}, Lzo;->f(Lzo;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 297
    iget-object v0, p0, Lzu;->a:Lzo;

    invoke-static {v0}, Lzo;->f(Lzo;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 298
    iget-object v0, p0, Lzu;->a:Lzo;

    invoke-virtual {v0}, Lzo;->c()V

    .line 299
    return-void
.end method

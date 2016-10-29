.class Lcom/twitter/app/main/a;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/config/f;


# instance fields
.field final synthetic a:Lcom/twitter/app/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/twitter/app/main/MainActivity;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/twitter/app/main/a;->a:Lcom/twitter/app/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/twitter/app/main/a;->a:Lcom/twitter/app/main/MainActivity;

    new-instance v1, Lcom/twitter/app/main/b;

    invoke-direct {v1, p0}, Lcom/twitter/app/main/b;-><init>(Lcom/twitter/app/main/a;)V

    invoke-virtual {v0, v1}, Lcom/twitter/app/main/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 302
    return-void
.end method

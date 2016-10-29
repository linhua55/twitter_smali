.class Lcom/twitter/app/main/b;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/app/main/a;


# direct methods
.method constructor <init>(Lcom/twitter/app/main/a;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/twitter/app/main/b;->a:Lcom/twitter/app/main/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/twitter/app/main/b;->a:Lcom/twitter/app/main/a;

    iget-object v0, v0, Lcom/twitter/app/main/a;->a:Lcom/twitter/app/main/MainActivity;

    invoke-virtual {v0}, Lcom/twitter/app/main/MainActivity;->Z()Lcyj;

    move-result-object v0

    invoke-virtual {v0}, Lcyj;->h()V

    .line 300
    return-void
.end method

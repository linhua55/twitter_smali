.class Lcxa;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcwy;


# direct methods
.method constructor <init>(Lcwy;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcxa;->a:Lcwy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcxa;->a:Lcwy;

    invoke-static {v0}, Lcwy;->a(Lcwy;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcxa;->a:Lcwy;

    invoke-static {v0}, Lcwy;->b(Lcwy;)Lcvv;

    move-result-object v0

    invoke-virtual {v0}, Lcvv;->d()V

    .line 43
    :cond_0
    return-void
.end method

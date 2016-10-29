.class Lccg;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/config/f;


# instance fields
.field final synthetic a:Lccf;


# direct methods
.method constructor <init>(Lccf;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lccg;->a:Lccf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lccg;->a:Lccf;

    invoke-static {v0}, Lccf;->a(Lccf;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcch;

    invoke-direct {v1, p0}, Lcch;-><init>(Lccg;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 190
    return-void
.end method

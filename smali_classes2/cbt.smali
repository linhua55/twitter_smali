.class Lcbt;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcbs;


# direct methods
.method constructor <init>(Lcbs;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcbt;->a:Lcbs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/twitter/app/common/util/f;->a()Lcom/twitter/app/common/util/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/util/f;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcbt;->a:Lcbs;

    invoke-static {v0}, Lcbs;->a(Lcbs;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/library/client/ab;->a(Landroid/content/Context;)Lcom/twitter/library/client/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/ab;->c()V

    .line 67
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 69
    :cond_0
    return-void
.end method

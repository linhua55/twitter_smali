.class final Ldce;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/concurrent/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/concurrent/e",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldlx;

.field final synthetic b:Lrx/ap;


# direct methods
.method constructor <init>(Ldlx;Lrx/ap;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Ldce;->a:Ldlx;

    iput-object p2, p0, Ldce;->b:Lrx/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 62
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ldce;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public a(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Ldce;->a:Ldlx;

    iget-object v1, p0, Ldce;->b:Lrx/ap;

    invoke-virtual {v0, v1}, Ldlx;->b(Lrx/ap;)V

    .line 66
    return-void
.end method

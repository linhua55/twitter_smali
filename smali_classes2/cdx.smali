.class Lcdx;
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
.field final synthetic a:Lcdv;


# direct methods
.method constructor <init>(Lcdv;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcdx;->a:Lcdv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 98
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcdx;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public a(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcdx;->a:Lcdv;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcdv;->d:Z

    .line 102
    return-void
.end method

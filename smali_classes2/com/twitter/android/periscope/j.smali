.class Lcom/twitter/android/periscope/j;
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
.field final synthetic a:Lcom/twitter/util/concurrent/j;

.field final synthetic b:Lcom/twitter/android/periscope/h;


# direct methods
.method constructor <init>(Lcom/twitter/android/periscope/h;Lcom/twitter/util/concurrent/j;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/twitter/android/periscope/j;->b:Lcom/twitter/android/periscope/h;

    iput-object p2, p0, Lcom/twitter/android/periscope/j;->a:Lcom/twitter/util/concurrent/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 74
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twitter/android/periscope/j;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public a(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/twitter/android/periscope/j;->b:Lcom/twitter/android/periscope/h;

    iget-object v0, v0, Lcom/twitter/android/periscope/h;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/twitter/android/periscope/j;->a:Lcom/twitter/util/concurrent/j;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

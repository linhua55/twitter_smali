.class Lcom/twitter/android/xc;
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
.field final synthetic a:Lcom/twitter/android/UrlInterpreterActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/UrlInterpreterActivity;)V
    .locals 0

    .prologue
    .line 606
    iput-object p1, p0, Lcom/twitter/android/xc;->a:Lcom/twitter/android/UrlInterpreterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 606
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twitter/android/xc;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public a(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/twitter/android/xc;->a:Lcom/twitter/android/UrlInterpreterActivity;

    invoke-virtual {v0}, Lcom/twitter/android/UrlInterpreterActivity;->finish()V

    .line 610
    return-void
.end method

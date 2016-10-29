.class Lwh;
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
        "Lcom/twitter/library/api/upload/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/client/tweetuploadmanager/c;

.field final synthetic b:Lcom/twitter/library/api/upload/am;

.field final synthetic c:Lwe;


# direct methods
.method constructor <init>(Lwe;Lcom/twitter/android/client/tweetuploadmanager/c;Lcom/twitter/library/api/upload/am;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lwh;->c:Lwe;

    iput-object p2, p0, Lwh;->a:Lcom/twitter/android/client/tweetuploadmanager/c;

    iput-object p3, p0, Lwh;->b:Lcom/twitter/library/api/upload/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/api/upload/h;)V
    .locals 4

    .prologue
    .line 144
    iget-object v0, p0, Lwh;->c:Lwe;

    iget-object v1, p0, Lwh;->a:Lcom/twitter/android/client/tweetuploadmanager/c;

    iget-object v2, p0, Lwh;->b:Lcom/twitter/library/api/upload/am;

    iget-object v3, p0, Lwh;->c:Lwe;

    iget-object v3, v3, Lwe;->b:Lcom/twitter/library/api/upload/l;

    invoke-virtual {v3}, Lcom/twitter/library/api/upload/l;->a()Lcom/twitter/library/api/upload/h;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lwe;->a(Lcom/twitter/android/client/tweetuploadmanager/c;Lcom/twitter/library/api/upload/am;Lcom/twitter/library/api/upload/h;)V

    .line 145
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 141
    check-cast p1, Lcom/twitter/library/api/upload/h;

    invoke-virtual {p0, p1}, Lwh;->a(Lcom/twitter/library/api/upload/h;)V

    return-void
.end method

.class Lcom/twitter/android/composer/bc;
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
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/util/concurrent/ObservablePromise;

.field final synthetic b:Lcom/twitter/android/composer/ba;


# direct methods
.method constructor <init>(Lcom/twitter/android/composer/ba;Lcom/twitter/util/concurrent/ObservablePromise;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/twitter/android/composer/bc;->b:Lcom/twitter/android/composer/ba;

    iput-object p2, p0, Lcom/twitter/android/composer/bc;->a:Lcom/twitter/util/concurrent/ObservablePromise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 172
    if-eqz p1, :cond_1

    .line 174
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    sget-object v0, Lcgi;->a:Lcgi;

    invoke-virtual {v0, p1}, Lcgi;->a(Landroid/database/Cursor;)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/twitter/android/composer/bc;->b:Lcom/twitter/android/composer/ba;

    invoke-virtual {v1, v0}, Lcom/twitter/android/composer/ba;->a(Lcom/twitter/model/core/Tweet;)V

    .line 177
    iget-object v1, p0, Lcom/twitter/android/composer/bc;->a:Lcom/twitter/util/concurrent/ObservablePromise;

    invoke-virtual {v1, v0}, Lcom/twitter/util/concurrent/ObservablePromise;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 183
    :cond_1
    return-void

    .line 180
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 169
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/composer/bc;->a(Landroid/database/Cursor;)V

    return-void
.end method

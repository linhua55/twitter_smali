.class Lcom/crashlytics/android/core/an;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/crashlytics/android/core/ab;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/ab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/crashlytics/android/core/an;->d:Lcom/crashlytics/android/core/ab;

    iput-object p2, p0, Lcom/crashlytics/android/core/an;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/crashlytics/android/core/an;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/crashlytics/android/core/an;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/crashlytics/android/core/an;->d:Lcom/crashlytics/android/core/ab;

    invoke-static {v0}, Lcom/crashlytics/android/core/ab;->c(Lcom/crashlytics/android/core/ab;)Ljava/lang/String;

    move-result-object v0

    .line 341
    new-instance v1, Lcom/crashlytics/android/core/bg;

    iget-object v2, p0, Lcom/crashlytics/android/core/an;->d:Lcom/crashlytics/android/core/ab;

    invoke-static {v2}, Lcom/crashlytics/android/core/ab;->d(Lcom/crashlytics/android/core/ab;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/crashlytics/android/core/bg;-><init>(Ljava/io/File;)V

    new-instance v2, Lcom/crashlytics/android/core/cl;

    iget-object v3, p0, Lcom/crashlytics/android/core/an;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/crashlytics/android/core/an;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/crashlytics/android/core/an;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/crashlytics/android/core/cl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/crashlytics/android/core/bg;->a(Ljava/lang/String;Lcom/crashlytics/android/core/cl;)V

    .line 343
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/crashlytics/android/core/an;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

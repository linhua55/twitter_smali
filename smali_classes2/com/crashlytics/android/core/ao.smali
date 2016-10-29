.class Lcom/crashlytics/android/core/ao;
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
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/crashlytics/android/core/ab;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/ab;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/crashlytics/android/core/ao;->b:Lcom/crashlytics/android/core/ab;

    iput-object p2, p0, Lcom/crashlytics/android/core/ao;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lcom/crashlytics/android/core/ao;->b:Lcom/crashlytics/android/core/ab;

    invoke-static {v0}, Lcom/crashlytics/android/core/ab;->c(Lcom/crashlytics/android/core/ab;)Ljava/lang/String;

    move-result-object v0

    .line 361
    new-instance v1, Lcom/crashlytics/android/core/bg;

    iget-object v2, p0, Lcom/crashlytics/android/core/ao;->b:Lcom/crashlytics/android/core/ab;

    invoke-static {v2}, Lcom/crashlytics/android/core/ab;->d(Lcom/crashlytics/android/core/ab;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/crashlytics/android/core/bg;-><init>(Ljava/io/File;)V

    iget-object v2, p0, Lcom/crashlytics/android/core/ao;->a:Ljava/util/Map;

    invoke-virtual {v1, v0, v2}, Lcom/crashlytics/android/core/bg;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 363
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
    .line 357
    invoke-virtual {p0}, Lcom/crashlytics/android/core/ao;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

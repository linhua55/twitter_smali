.class Lcom/crashlytics/android/core/cj;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:[Ljava/lang/StackTraceElement;

.field public final d:Lcom/crashlytics/android/core/cj;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lcom/crashlytics/android/core/ci;)V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/cj;->a:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/cj;->b:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/crashlytics/android/core/ci;->a([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/core/cj;->c:[Ljava/lang/StackTraceElement;

    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 20
    if-eqz v1, :cond_0

    new-instance v0, Lcom/crashlytics/android/core/cj;

    invoke-direct {v0, v1, p2}, Lcom/crashlytics/android/core/cj;-><init>(Ljava/lang/Throwable;Lcom/crashlytics/android/core/ci;)V

    :goto_0
    iput-object v0, p0, Lcom/crashlytics/android/core/cj;->d:Lcom/crashlytics/android/core/cj;

    .line 21
    return-void

    .line 20
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

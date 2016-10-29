.class Lcom/crashlytics/android/core/am;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Date;

.field final synthetic b:Ljava/lang/Thread;

.field final synthetic c:Ljava/lang/Throwable;

.field final synthetic d:Lcom/crashlytics/android/core/ab;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/ab;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/crashlytics/android/core/am;->d:Lcom/crashlytics/android/core/ab;

    iput-object p2, p0, Lcom/crashlytics/android/core/am;->a:Ljava/util/Date;

    iput-object p3, p0, Lcom/crashlytics/android/core/am;->b:Ljava/lang/Thread;

    iput-object p4, p0, Lcom/crashlytics/android/core/am;->c:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 321
    iget-object v0, p0, Lcom/crashlytics/android/core/am;->d:Lcom/crashlytics/android/core/ab;

    invoke-static {v0}, Lcom/crashlytics/android/core/ab;->a(Lcom/crashlytics/android/core/ab;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/crashlytics/android/core/am;->d:Lcom/crashlytics/android/core/ab;

    iget-object v1, p0, Lcom/crashlytics/android/core/am;->a:Ljava/util/Date;

    iget-object v2, p0, Lcom/crashlytics/android/core/am;->b:Ljava/lang/Thread;

    iget-object v3, p0, Lcom/crashlytics/android/core/am;->c:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3}, Lcom/crashlytics/android/core/ab;->b(Lcom/crashlytics/android/core/ab;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 324
    :cond_0
    return-void
.end method

.class Lcom/twitter/android/initialization/g;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Z

.field private final c:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/initialization/g;->a:Landroid/content/Context;

    .line 155
    iput-boolean p3, p0, Lcom/twitter/android/initialization/g;->b:Z

    .line 156
    iput-object p2, p0, Lcom/twitter/android/initialization/g;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 157
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/twitter/android/initialization/g;->b:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/twitter/android/initialization/g;->a:Landroid/content/Context;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3, p2}, Lcom/twitter/library/scribe/ScribeService;->a(Landroid/content/Context;JLjava/lang/Throwable;)V

    .line 165
    :cond_0
    instance-of v0, p2, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_2

    .line 167
    invoke-static {p2}, Lbix;->b(Ljava/lang/Throwable;)V

    .line 193
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/initialization/g;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/twitter/android/initialization/g;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 196
    :cond_1
    return-void

    .line 169
    :cond_2
    invoke-static {}, Lbix;->a()Lbiu;

    move-result-object v1

    .line 170
    invoke-virtual {v1}, Lbiu;->a()I

    .line 173
    :try_start_0
    new-instance v0, Lcom/twitter/android/initialization/h;

    invoke-direct {v0, p0}, Lcom/twitter/android/initialization/h;-><init>(Lcom/twitter/android/initialization/g;)V

    invoke-static {v0}, Lcom/twitter/util/h;->a(Lcom/twitter/util/concurrent/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 180
    const-string/jumbo v2, "Logcat"

    const-string/jumbo v3, "\n"

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v3, v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lbiu;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {}, Lcom/twitter/app/common/util/c;->a()Lcom/twitter/app/common/util/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/app/common/util/c;->b()Landroid/app/Activity;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_3

    .line 184
    const-string/jumbo v2, "Last Resumed Activity"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lbiu;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_3
    invoke-static {p2}, Lbix;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-virtual {v1}, Lbiu;->b()I

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lbiu;->b()I

    throw v0
.end method

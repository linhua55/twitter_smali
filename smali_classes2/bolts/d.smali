.class final Lbolts/d;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final a:Lbolts/d;


# instance fields
.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lbolts/d;

    invoke-direct {v0}, Lbolts/d;-><init>()V

    sput-object v0, Lbolts/d;->a:Lbolts/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lbolts/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lbolts/d;->b:Ljava/util/concurrent/ExecutorService;

    .line 29
    new-instance v0, Lbolts/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbolts/f;-><init>(Lbolts/e;)V

    iput-object v0, p0, Lbolts/d;->c:Ljava/util/concurrent/Executor;

    .line 30
    return-void

    .line 26
    :cond_0
    invoke-static {}, Lbolts/a;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lbolts/d;->a:Lbolts/d;

    iget-object v0, v0, Lbolts/d;->b:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static b()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lbolts/d;->a:Lbolts/d;

    iget-object v0, v0, Lbolts/d;->c:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private static c()Z
    .locals 2

    .prologue
    .line 15
    const-string/jumbo v0, "java.runtime.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 19
    :goto_0
    return v0

    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

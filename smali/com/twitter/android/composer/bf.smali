.class public Lcom/twitter/android/composer/bf;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/android/composer/bf;


# instance fields
.field public final b:Lcom/twitter/library/scribe/ScribeItem;

.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/twitter/android/composer/bh;

    invoke-direct {v0}, Lcom/twitter/android/composer/bh;-><init>()V

    invoke-virtual {v0}, Lcom/twitter/android/composer/bh;->a()Lcom/twitter/android/composer/bf;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/composer/bf;->a:Lcom/twitter/android/composer/bf;

    return-void
.end method

.method private constructor <init>(Lcom/twitter/android/composer/bh;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/twitter/android/composer/bh;->a(Lcom/twitter/android/composer/bh;)Lcom/twitter/library/scribe/ScribeItem;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/composer/bf;->b:Lcom/twitter/library/scribe/ScribeItem;

    .line 29
    invoke-static {p1}, Lcom/twitter/android/composer/bh;->b(Lcom/twitter/android/composer/bh;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/composer/bf;->c:Ljava/lang/String;

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/composer/bh;Lcom/twitter/android/composer/bg;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/twitter/android/composer/bf;-><init>(Lcom/twitter/android/composer/bh;)V

    return-void
.end method

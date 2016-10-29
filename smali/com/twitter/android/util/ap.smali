.class public final Lcom/twitter/android/util/ap;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static a:Lcom/twitter/android/util/al;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/twitter/android/util/ap;->a:Lcom/twitter/android/util/al;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/twitter/android/util/al;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/twitter/android/util/ap;->a:Lcom/twitter/android/util/al;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/twitter/android/util/aq;

    invoke-direct {v0, p0}, Lcom/twitter/android/util/aq;-><init>(Landroid/content/Context;)V

    .line 32
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/android/util/ap;->a:Lcom/twitter/android/util/al;

    goto :goto_0
.end method

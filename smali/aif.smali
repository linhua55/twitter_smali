.class public Laif;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/object/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/object/c",
        "<",
        "Landroid/app/Activity;",
        "Laib;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lain;


# direct methods
.method public constructor <init>(Lain;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Laif;->a:Lain;

    .line 31
    return-void
.end method

.method public static a(Lcom/twitter/library/client/bk;)Laif;
    .locals 2

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 18
    new-instance v1, Lain;

    invoke-direct {v1, v0}, Lain;-><init>(Lcom/twitter/library/client/Session;)V

    .line 19
    new-instance v0, Laif;

    invoke-direct {v0, v1}, Laif;-><init>(Lain;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Laib;
    .locals 4

    .prologue
    .line 36
    new-instance v0, Lahy;

    new-instance v1, Laia;

    invoke-direct {v1, p1}, Laia;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Laif;->a:Lain;

    new-instance v3, Lcom/twitter/android/av/video/j;

    invoke-direct {v3}, Lcom/twitter/android/av/video/j;-><init>()V

    invoke-direct {v0, v1, v2, v3, p1}, Lahy;-><init>(Laia;Lain;Lcom/twitter/android/av/video/j;Landroid/app/Activity;)V

    .line 39
    new-instance v1, Laib;

    new-instance v2, Laih;

    invoke-direct {v2, p1}, Laih;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v0}, Laib;-><init>(Laih;Lahy;)V

    return-object v1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Laif;->a(Landroid/app/Activity;)Laib;

    move-result-object v0

    return-object v0
.end method

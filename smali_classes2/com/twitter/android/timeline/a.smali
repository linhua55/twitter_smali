.class public Lcom/twitter/android/timeline/a;
.super Lcom/twitter/android/timeline/bp;
.source "Twttr"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/twitter/android/timeline/b;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/twitter/android/timeline/bp;-><init>(Lcom/twitter/android/timeline/bq;)V

    .line 14
    invoke-static {p1}, Lcom/twitter/android/timeline/b;->a(Lcom/twitter/android/timeline/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/timeline/a;->a:Ljava/lang/String;

    .line 15
    return-void
.end method

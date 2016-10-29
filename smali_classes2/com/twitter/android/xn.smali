.class public Lcom/twitter/android/xn;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public final c:Lcom/twitter/library/scribe/TwitterScribeItem;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeItem;)V
    .locals 1

    .prologue
    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    const/16 v0, 0x80

    iput v0, p0, Lcom/twitter/android/xn;->b:I

    .line 532
    iput-object p1, p0, Lcom/twitter/android/xn;->a:Ljava/lang/String;

    .line 533
    iput-object p2, p0, Lcom/twitter/android/xn;->c:Lcom/twitter/library/scribe/TwitterScribeItem;

    .line 534
    return-void
.end method

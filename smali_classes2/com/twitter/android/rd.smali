.class final Lcom/twitter/android/rd;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Lcom/twitter/android/widget/CarouselRowView;

.field public final b:Lcom/twitter/android/widget/j;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I


# direct methods
.method constructor <init>(Lcom/twitter/android/widget/CarouselRowView;Lcom/twitter/android/widget/j;)V
    .locals 1

    .prologue
    .line 2231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2228
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/android/rd;->d:I

    .line 2232
    iput-object p1, p0, Lcom/twitter/android/rd;->a:Lcom/twitter/android/widget/CarouselRowView;

    .line 2233
    iput-object p2, p0, Lcom/twitter/android/rd;->b:Lcom/twitter/android/widget/j;

    .line 2234
    return-void
.end method

.class Lcom/twitter/android/rt;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/timeline/bh;


# instance fields
.field final synthetic a:Lcom/twitter/android/TimelineFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/TimelineFragment;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/twitter/android/rt;->a:Lcom/twitter/android/TimelineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/twitter/android/rt;->a:Lcom/twitter/android/TimelineFragment;

    invoke-static {v0, p1}, Lcom/twitter/android/TimelineFragment;->a(Lcom/twitter/android/TimelineFragment;Ljava/lang/String;)V

    .line 487
    return-void
.end method

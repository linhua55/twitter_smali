.class Lcom/twitter/android/fg;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/widget/eq;


# instance fields
.field final synthetic a:Lcom/twitter/android/EmailExploreActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/EmailExploreActivity;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/twitter/android/fg;->a:Lcom/twitter/android/EmailExploreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/EmailExploreActivity;Lcom/twitter/android/fc;)V
    .locals 0

    .prologue
    .line 529
    invoke-direct {p0, p1}, Lcom/twitter/android/fg;-><init>(Lcom/twitter/android/EmailExploreActivity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/twitter/android/fg;->a:Lcom/twitter/android/EmailExploreActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/EmailExploreActivity;->a(Z)V

    .line 536
    return-void
.end method

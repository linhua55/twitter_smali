.class Lcom/twitter/android/eq;
.super Landroid/widget/Filter;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/EditProfileActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/EditProfileActivity;)V
    .locals 0

    .prologue
    .line 638
    iput-object p1, p0, Lcom/twitter/android/eq;->a:Lcom/twitter/android/EditProfileActivity;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/twitter/android/eq;->a:Lcom/twitter/android/EditProfileActivity;

    invoke-static {v0}, Lcom/twitter/android/EditProfileActivity;->b(Lcom/twitter/android/EditProfileActivity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 1

    .prologue
    .line 641
    const/4 v0, 0x0

    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .prologue
    .line 646
    return-void
.end method

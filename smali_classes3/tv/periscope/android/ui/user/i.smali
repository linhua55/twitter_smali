.class Ltv/periscope/android/ui/user/i;
.super Landroid/widget/Filter;
.source "Twttr"


# instance fields
.field final synthetic a:Ltv/periscope/android/ui/user/e;


# direct methods
.method private constructor <init>(Ltv/periscope/android/ui/user/e;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Ltv/periscope/android/ui/user/i;->a:Ltv/periscope/android/ui/user/e;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltv/periscope/android/ui/user/e;Ltv/periscope/android/ui/user/f;)V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/user/i;-><init>(Ltv/periscope/android/ui/user/e;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7

    .prologue
    .line 211
    new-instance v2, Landroid/widget/Filter$FilterResults;

    invoke-direct {v2}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 212
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x0

    iput-object v0, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Ltv/periscope/android/ui/user/i;->a:Ltv/periscope/android/ui/user/e;

    invoke-static {v0}, Ltv/periscope/android/ui/user/e;->a(Ltv/periscope/android/ui/user/e;)I

    move-result v0

    iput v0, v2, Landroid/widget/Filter$FilterResults;->count:I

    .line 234
    :goto_0
    return-object v2

    .line 218
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 219
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 220
    iget-object v0, p0, Ltv/periscope/android/ui/user/i;->a:Ltv/periscope/android/ui/user/e;

    invoke-static {v0}, Ltv/periscope/android/ui/user/e;->a(Ltv/periscope/android/ui/user/e;)I

    move-result v5

    .line 221
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v5, :cond_3

    .line 222
    iget-object v0, p0, Ltv/periscope/android/ui/user/i;->a:Ltv/periscope/android/ui/user/e;

    invoke-static {v0, v1}, Ltv/periscope/android/ui/user/e;->a(Ltv/periscope/android/ui/user/e;I)Ljava/lang/Object;

    move-result-object v0

    .line 223
    instance-of v6, v0, Ltv/periscope/android/api/PsUser;

    if-eqz v6, :cond_2

    .line 224
    check-cast v0, Ltv/periscope/android/api/PsUser;

    .line 225
    iget-object v6, v0, Ltv/periscope/android/api/PsUser;->username:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v0, Ltv/periscope/android/api/PsUser;->displayName:Ljava/lang/String;

    .line 226
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 227
    :cond_1
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 231
    :cond_3
    iput-object v4, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 232
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v2, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    .prologue
    .line 239
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Ltv/periscope/android/ui/user/i;->a:Ltv/periscope/android/ui/user/e;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/periscope/android/ui/user/e;->a(Ltv/periscope/android/ui/user/e;Ljava/util/List;)Ljava/util/List;

    .line 241
    iget-object v0, p0, Ltv/periscope/android/ui/user/i;->a:Ltv/periscope/android/ui/user/e;

    invoke-virtual {v0}, Ltv/periscope/android/ui/user/e;->notifyDataSetChanged()V

    .line 251
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 245
    iget-object v0, p0, Ltv/periscope/android/ui/user/i;->a:Ltv/periscope/android/ui/user/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltv/periscope/android/ui/user/e;->a(Ltv/periscope/android/ui/user/e;Ljava/util/List;)Ljava/util/List;

    .line 246
    iget-object v0, p0, Ltv/periscope/android/ui/user/i;->a:Ltv/periscope/android/ui/user/e;

    invoke-virtual {v0}, Ltv/periscope/android/ui/user/e;->notifyDataSetChanged()V

    goto :goto_0

    .line 248
    :cond_1
    iget-object v1, p0, Ltv/periscope/android/ui/user/i;->a:Ltv/periscope/android/ui/user/e;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Ltv/periscope/android/ui/user/e;->a(Ltv/periscope/android/ui/user/e;Ljava/util/List;)Ljava/util/List;

    .line 249
    iget-object v0, p0, Ltv/periscope/android/ui/user/i;->a:Ltv/periscope/android/ui/user/e;

    invoke-virtual {v0}, Ltv/periscope/android/ui/user/e;->notifyDataSetChanged()V

    goto :goto_0
.end method

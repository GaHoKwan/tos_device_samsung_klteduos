.class abstract Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ToggleAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    }
.end annotation


# instance fields
.field protected mDisabledIconResid:I

.field protected mDisabledStatusMessageResId:I

.field protected mEnabledIconResId:I

.field protected mEnabledStatusMessageResId:I

.field mLayoutId:I

.field protected mMessageResId:I

.field protected mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;


# direct methods
.method public constructor <init>(IIIII)V
    .locals 1
    .param p1, "enabledIconResId"    # I
    .param p2, "disabledIconResid"    # I
    .param p3, "message"    # I
    .param p4, "enabledStatusMessageResId"    # I
    .param p5, "disabledStatusMessageResId"    # I

    .prologue
    .line 1960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1942
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 1961
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledIconResId:I

    .line 1962
    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledIconResid:I

    .line 1963
    iput p3, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mMessageResId:I

    .line 1964
    iput p4, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    .line 1965
    iput p5, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    .line 1966
    const v0, 0x1090056

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mLayoutId:I

    .line 1967
    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 3
    .param p1, "buttonOn"    # Z

    .prologue
    .line 2036
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 2037
    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeStateFromPress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    return-void

    .line 2036
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_0
.end method

.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v7, 0x0

    .line 1976
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->willCreate()V

    .line 1977
    const v6, 0x1090056

    invoke-virtual {p4, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 1979
    .local v5, "v":Landroid/view/View;
    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1980
    .local v1, "icon":Landroid/widget/ImageView;
    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1981
    .local v2, "messageView":Landroid/widget/TextView;
    const v6, 0x1020312

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1982
    .local v4, "statusView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->isEnabled()Z

    move-result v0

    .line 1983
    .local v0, "enabled":Z
    if-eqz v2, :cond_0

    .line 1984
    iget v6, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mMessageResId:I

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1985
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1987
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v8, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-eq v6, v8, :cond_1

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v8, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-ne v6, v8, :cond_4

    :cond_1
    const/4 v3, 0x1

    .line 1988
    .local v3, "on":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 1989
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v3, :cond_5

    iget v6, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledIconResId:I

    :goto_1
    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1991
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1993
    :cond_2
    if-eqz v4, :cond_3

    .line 1994
    if-eqz v3, :cond_6

    iget v6, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_2
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1995
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1996
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1998
    :cond_3
    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1999
    return-object v5

    .end local v3    # "on":Z
    :cond_4
    move v3, v7

    .line 1987
    goto :goto_0

    .line 1989
    .restart local v3    # "on":Z
    :cond_5
    iget v6, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledIconResid:I

    goto :goto_1

    .line 1994
    :cond_6
    iget v6, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_2
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 2027
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->inTransition()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 2024
    const/4 v0, 0x0

    return v0
.end method

.method public onPress()V
    .locals 4

    .prologue
    .line 2002
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToggleAction onPress  mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2004
    const-string v1, "GlobalActions"

    const-string v2, "shouldn\'t be able to toggle when in transition"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    :goto_0
    return-void

    .line 2007
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 2008
    .local v0, "nowOn":Z
    :goto_1
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPress nowOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->onToggle(Z)V

    .line 2010
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->changeStateFromPress(Z)V

    goto :goto_0

    .line 2007
    .end local v0    # "nowOn":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onPressAction()V
    .locals 4

    .prologue
    .line 2013
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToggleAction onPress  mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2015
    const-string v1, "GlobalActions"

    const-string v2, "shouldn\'t be able to toggle when in transition"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    :goto_0
    return-void

    .line 2018
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 2019
    .local v0, "nowOn":Z
    :goto_1
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPressAction nowOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->onToggle(Z)V

    .line 2021
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->changeStateFromPress(Z)V

    goto :goto_0

    .line 2018
    .end local v0    # "nowOn":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method abstract onToggle(Z)V
.end method

.method public updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V
    .locals 0
    .param p1, "state"    # Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .prologue
    .line 2041
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 2042
    return-void
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 1973
    return-void
.end method